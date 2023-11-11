import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterStateInitial());

  int teamAPoint = 0;
  int teamBPoint = 0;
  int teamCPoint = 0;

  void teamAIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoint += buttonNumber;
      emit(CounterAIncrement());
    } else if (team == 'B'){
      teamBPoint += buttonNumber;
      emit(CounterBIncrement());
    }else{
      teamBPoint=0;
      teamAPoint=0;
      emit(CounterCIncrement());
    }


  }


}
