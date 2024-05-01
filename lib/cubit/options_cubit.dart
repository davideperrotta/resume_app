import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'options_state.dart';

class OptionsCubit extends Cubit<OptionsState> {
  OptionsCubit() : super(const OptionsInitial(counter: 0, language: 'en'));

  void increment() {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void setLanguage(lang) {
    emit(state.copyWith(language: lang));
  }
}

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(const ApiState(apiValue: ''));

  void setApiValue(String newString) {
    emit(ApiState(apiValue: newString));
  }
}