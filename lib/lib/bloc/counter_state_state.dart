part of 'counter_state_cubit.dart';

@immutable
abstract class CounterState {}

class CounterStateInitial extends CounterState {}
class CounterAIncrement extends CounterState {}
class CounterBIncrement extends CounterState {}
class CounterCIncrement extends CounterState {}

