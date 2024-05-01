part of 'options_cubit.dart';

class OptionsState extends Equatable {
  final int counter;
  final String language;
  const OptionsState({required this.counter, required this.language});

  @override
  List<Object?> get props => [counter, language];

  OptionsState copyWith({int? counter, String? language}) {
    return OptionsState(
      counter: counter ?? this.counter,
      language: language ?? this.language,
    );
  }
}

final class OptionsInitial extends OptionsState {

  const OptionsInitial({required counter, language}) : super(counter: 0, language: 'en');

  @override
  List<Object> get props => [];
}

class ApiState extends Equatable {
  final String apiValue;

  const ApiState({required this.apiValue});

  @override
  List<Object?> get props => [apiValue];
}
