import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<IncreamentEvent>(((event, emit) {
      ++counter;
      if (counter <= 5)
        counter = counter;
      else
        counter = 5;
      emit(CounterValueChangesState(Counter: counter));
    }));
    on<DecreamentEvent>(((event, emit) {
      --counter;
      if (counter <= 0) counter = 0;
      emit(CounterValueChangesState(Counter: counter));
    }));
    on<RestEvent>(((event, emit) {
      counter = 0;
      emit(CounterValueChangesState(Counter: counter));
    }));
  }
}
