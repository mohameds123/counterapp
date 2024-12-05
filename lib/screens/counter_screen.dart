import 'package:counterapp/logic/cubit.dart';
import 'package:counterapp/logic/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterCubit(),
      child: Scaffold(
        body: BlocBuilder<CounterCubit , CounterState>(
          builder: (context, state){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Counter",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  state.counterValue.toString(),
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          context.read<CounterCubit>().increaseCounter();
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10,),
                            border: Border.all(
                              color: Colors.black54,
                              width: 2,

                            ),

                          ),
                          child: Center(child: Text("INCREASE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          context.read<CounterCubit>().decreaseCounter();
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10,),
                            border: Border.all(
                              color: Colors.black54,
                              width: 2,

                            ),

                          ),
                          child: Center(child: Text("DECREACE",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );

          },
        ),
      ),
    );
  }
}
