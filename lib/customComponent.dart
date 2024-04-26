import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/options_cubit.dart';

class CubitComponent extends StatelessWidget {
  const CubitComponent({super.key});

  @override
  Widget build(BuildContext context) {

    Future<void> fetchJokes() async {
      final response = await http.get(Uri.parse('https://api.chucknorris.io/jokes/random'));
      if (response.statusCode == 200) {
        //ApiCubit().setApiValue('test');
        final json = jsonDecode(response.body);
        context.read<ApiCubit>().setApiValue(json['value']);
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    }

    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<OptionsCubit>().increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    //context.read<ApiCubit>().setApiValue('test');
                    fetchJokes();
                  },
                  tooltip: 'Api',
                  child: const Icon(Icons.network_wifi_2_bar),
                ),
              ],
            ),
            BlocBuilder<OptionsCubit, OptionsState>(
              builder: (context, state) {
                return Text(
                  'counter: ${state.counter}',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            BlocBuilder<ApiCubit, ApiState>(
              builder: (context, state) {
                return Text(
                  'Joke: ${state.apiValue}',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            const Text('This is a test page for cubit')
          ],
        )
      ],
    );
  }
}
