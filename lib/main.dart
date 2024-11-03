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
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAIncrementState) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoint;
        }else{
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoint;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: Text(
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
                      Text(
                        "Team A",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$teamAPoints",
                        style: TextStyle(
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
                        onPressed: () {},
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          minimumSize: Size(140, 20),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          minimumSize: Size(140, 20),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 370,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$teamBPoints",
                        style: TextStyle(
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
                        onPressed: () {},
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          minimumSize: Size(140, 20),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          minimumSize: Size(140, 20),
                        ),
                        onPressed: () {},
                        child: Text(
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
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  minimumSize: Size(140, 20),
                ),
                onPressed: () {},
                child: Text(
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
