import 'package:bassket_ball/lib/bloc/counter_state_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'lib/screen/home_screen.dart';

void main() {
  runApp(const bassketBall());
}

class bassketBall extends StatelessWidget {
  const bassketBall({super.key});


   @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),

        child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
  );
  }
}

