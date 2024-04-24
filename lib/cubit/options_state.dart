part of 'options_cubit.dart';

class OptionsState extends Equatable {
  final int counter;
  const OptionsState({required this.counter});

  @override
  List<Object?> get props => [counter];

  OptionsState copyWith({int? counter}) {
    return OptionsState(
      counter: counter ?? this.counter,
    );
  }
}

final class OptionsInitial extends OptionsState {

  const OptionsInitial({required counter}) : super(counter: 0);

  @override
  List<Object> get props => [];
}
