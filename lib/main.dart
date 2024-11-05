import 'package:basketball_point_counter/cubit/counter_cubit.dart';
import 'package:basketball_point_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketballPointCounter());
}

class BasketballPointCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: const Text(
              "Points Counter",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 130,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          minimumSize: const Size(140, 20),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            team: 'A',
                            buttonNumber: 1,
                          );
                        },
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          minimumSize: const Size(140, 20),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            team: 'A',
                            buttonNumber: 2,
                          );
                        },
                        child: const Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          minimumSize: const Size(140, 20),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            team: 'A',
                            buttonNumber: 3,
                          );
                        },
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 370,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 130,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          minimumSize: Size(140, 20),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            team: 'B',
                            buttonNumber: 1,
                          );
                        },
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          minimumSize: const Size(140, 20),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            team: 'B',
                            buttonNumber: 2,
                          );
                        },
                        child: const Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          minimumSize: const Size(140, 20),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                            team: 'B',
                            buttonNumber: 3,
                          );
                        },
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  minimumSize: const Size(140, 20),
                ),
                onPressed: () {
                  
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
