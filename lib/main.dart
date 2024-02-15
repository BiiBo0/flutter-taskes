import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(basket_ball());
}

class basket_ball extends StatefulWidget {
  @override
  State<basket_ball> createState() => _basket_ballState();
}

class _basket_ballState extends State<basket_ball> {
  int teamApoints = 0;

  int teamBpoints = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 152, 0, 1),
          foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: const Text('Points Counter'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$teamApoints",
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });
                        },
                        child: const Text('Add 1 Point'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 152, 0, 1),
                          foregroundColor: Colors.white,
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 2;
                            });
                          },
                          child: Text('Add 2 Point'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(255, 152, 0, 1),
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                          });
                        },
                        child: const Text('Add 3 Point'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 152, 0, 1),
                          foregroundColor: Colors.white,
                        ),
                      ),
                      // Spacer(
                      //   flex: 100,
                      // ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    indent: 100,
                    endIndent: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints++;
                          });
                        },
                        child: const Text('Add 1 Point'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 152, 0, 1),
                          foregroundColor: Colors.white,
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 2;
                            });
                          },
                          child: Text('Add 2 Point'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(255, 152, 0, 1),
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints += 3;
                          });
                        },
                        child: const Text('Add 3 Point'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 152, 0, 1),
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: const Text('Reset'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 152, 0, 1),
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
