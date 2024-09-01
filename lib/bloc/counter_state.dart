part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CounterValueChangesState extends CounterState{
  /// The line `final int Counter;` is declaring a final integer variable named `Counter` within the
  /// `CounterValueChangesState` class in Dart. This variable will hold the value of the counter in the
  /// state. By declaring it as final, its value cannot be changed once it is set within an instance of
  /// the `CounterValueChangesState` class.
  final int Counter ;

  CounterValueChangesState({required this.Counter});
}