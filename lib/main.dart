import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPointCounter());
}

class BasketballPointCounter extends StatefulWidget {
  @override
  State<BasketballPointCounter> createState() => _BasketballPointCounterState();
}

class _BasketballPointCounterState extends State<BasketballPointCounter> {
  int teamAPoint = 0;

  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      "$teamAPoint",
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

                      onPressed: (){

                        setState(() {
                          teamAPoint++;
                        });
                      },
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
                      onPressed: () {

                        setState(() {
                          teamAPoint +=2;
                        });
                      },
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
                      onPressed: () {

                        setState(() {
                          teamAPoint +=3;
                        });
                      },
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
                      "$teamBPoint",
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
                      onPressed: () {
                        setState(() {
                          teamBPoint++;
                        });
                      },
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
                      onPressed: () {
                        setState(() {
                          teamBPoint +=2;
                        });
                      },
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
                      onPressed: () {
                        setState(() {
                          teamBPoint +=3;
                        });
                      },
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
              onPressed: () {
                setState(() {
                  teamAPoint = 0;
                  teamBPoint =0;
                });
              },
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
