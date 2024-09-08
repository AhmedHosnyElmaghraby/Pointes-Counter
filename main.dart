import 'package:flutter/material.dart';

void main() {
  runApp(PointesCounter());
}

class PointesCounter extends StatefulWidget {
  @override
  State<PointesCounter> createState() => _PointesCounterState();
}

class _PointesCounterState extends State<PointesCounter> {
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Pointes Counter'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Text(
                    'Team 1',
                    style: TextStyle(
                      fontSize: 33,
                    ),
                  ),
                  Text(
                    '$TeamAPoints',
                    style: TextStyle(
                      fontSize: 160,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        TeamAPoints++;
                      });

                      print(TeamAPoints);
                    },
                    child: Text(
                      'Add 1 Pointe',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        TeamAPoints += 2;
                      });
                    },
                    child: Text(
                      'Add 2 Pointe',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        TeamAPoints += 3;
                      });
                    },
                    child: Text(
                      'Add 3 Pointe',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ]),
                const SizedBox(
                  height: 400,
                  child: const VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Column(children: [
                  Text(
                    'Team 2',
                    style: TextStyle(
                      fontSize: 33,
                    ),
                  ),
                  Text(
                    '$TeamBPoints',
                    style: TextStyle(
                      fontSize: 160,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        TeamBPoints++;
                      });
                    },
                    child: const Text(
                      'Add 1 Pointe',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        TeamBPoints += 1;
                      });
                    },
                    child: const Text(
                      'Add 2 Pointe',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      minimumSize: Size(150, 60),
                    ),
                    onPressed: () {
                      setState(() {
                        TeamBPoints += 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Pointe',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ]),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 60),
              ),
              onPressed: () {
                setState(() {
                  TeamAPoints = 0;
                  TeamBPoints = 0;
                });
              },
              child: Text(
                'Recet',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
