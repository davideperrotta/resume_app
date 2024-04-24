import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'options_state.dart';

class OptionsCubit extends Cubit<OptionsState> {
  OptionsCubit() : super(OptionsInitial(counter: 0));

  void increment() {
    emit(state.copyWith(counter: state.counter + 1));
  }
}
