import 'package:bassket_ball/lib/bloc/counter_state_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
const   Home({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocConsumer<CounterCubit,CounterState>(
      listener: (context,state){},
      builder: (context,state){
        return  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                         Text(
                           '${BlocProvider
                               .of<CounterCubit>(context)
                               .teamAPoint}',
                          style:const TextStyle(
                            fontSize: 100,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding:const  EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {BlocProvider.of<CounterCubit>(context).teamAIncrement(team: 'A', buttonNumber:1);},
                          child:const Text(
                            'Add 1 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 50),
                          ),
                          onPressed: () {BlocProvider.of<CounterCubit>(context).teamAIncrement(team: 'A', buttonNumber:2);},
                          child:const Text(
                            'Add 2 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {BlocProvider.of<CounterCubit>(context).teamAIncrement(team: 'A', buttonNumber:3);},
                          child:const Text(
                            'Add 3 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox (
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'team 2',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                          style:const TextStyle(
                            fontSize: 100,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            backgroundColor: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {BlocProvider.of<CounterCubit>(context).teamAIncrement(team: 'B', buttonNumber:1);},
                          child:const Text(
                            'Add 1 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {BlocProvider.of<CounterCubit>(context).teamAIncrement(team: 'B', buttonNumber:2);},
                          child:const Text(
                            'Add 2 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {BlocProvider.of<CounterCubit>(context).teamAIncrement(team: 'B', buttonNumber:3);},
                          child:const Text(
                            'Add 3 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  backgroundColor: Colors.orange,
                  minimumSize:const Size(150, 50),
                ),
                onPressed: () {BlocProvider.of<CounterCubit>(context).teamAIncrement(team: 'C', buttonNumber: 0);},
                child:const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
