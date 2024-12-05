import 'package:counterapp/logic/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0)); // initial state with 0

// increase
  void increaseCounter() {
    emit(CounterState(state.counterValue + 1));
  }

//decrease
  void decreaseCounter() {
    emit(CounterState(state.counterValue - 1));
  }
}
