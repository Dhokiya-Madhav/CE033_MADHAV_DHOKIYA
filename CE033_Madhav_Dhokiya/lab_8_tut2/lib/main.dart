//Lab 8 tut 2 code

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: FinalTest1(),
    ));


class FinalTest1 extends StatefulWidget {
  @override
  State<FinalTest1> createState() => _FinalTest1State();
}

class _FinalTest1State extends State<FinalTest1> {
// const FinalTest1({Key? key}) : super(key: key);

  num age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text('My Info', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  age += 1;
                });
              },
              child: Text("+"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  age -= 1;
                });
              },
              child: Text("-"),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Text("+"),
      //   onPressed: () {
      //     //Notify the framework that the internal state of this object has changed.
      //     setState(() {
      //       age += 1;
      //     });
      //   },
      // ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/img/l2.png'),
            ),
            SizedBox(height: 20),
            Text(
              'NAME: ',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Madhav Dhokiya',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$age',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Icon(
                  Icons.attach_email_rounded,
                  color: Colors.black,
                ),
                SizedBox(width: 12.0),
                Text(
                  'madhavdhokiya@gmail.com',
                  style: TextStyle(
                    color: Colors.brown[800],
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab 8'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.green,
              child: Text("1"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.yellow,
            child: Text("2"),
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.white70,
            child: Text("3"),
          ),
        ],
      ),
    );
  }
}

body: Column(
  //How the children should be placed along the main axis in a flex layout.
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  //How the children should be placed along the cross axis in a flex layout.
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Text("Hello Row"),
    FlatButton(
      onPressed: () {},
      color: Colors.purple,
      child: Text("Click Me"),
    ),
    Container(
      color: Colors.cyanAccent,
      padding: EdgeInsets.all(30.0),
      child: Text("Inside Container"),
    ),
  ],
),

body: Column(
  // mainAxisAlignment: MainAxisAlignment.spaceAround,
  mainAxisAlignment: MainAxisAlignment.center,
  // mainAxisAlignment: MainAxisAlignment.end,
  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  // mainAxisAlignment: MainAxisAlignment.start,
  // crossAxisAlignment: CrossAxisAlignment.stretch,
  // crossAxisAlignment: CrossAxisAlignment.end,
  // crossAxisAlignment: CrossAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    /* Text('HELLO ROW'),
  FlatButton(
  onPressed: () {},
  color: Colors.purple,
  child: Text('press me'),
  ),
  */
    Row(),
    Container(
      color: Colors.deepOrange[800],
      padding: EdgeInsets.all(30.0),
      child: Text('inside container 1'),
    ),
    Container(
      color: Colors.limeAccent,
      padding: EdgeInsets.all(50.0),
      child: Text('inside container 2'),
    ),
    Container(
      color: Colors.green[800],
      padding: EdgeInsets.all(70.0),
      child: Text('inside container 3'),
    ),
  ],

body: Column(
  // mainAxisAlignment: MainAxisAlignment.spaceAround,
  // mainAxisAlignment: MainAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.end,
  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  // mainAxisAlignment: MainAxisAlignment.start,
  // crossAxisAlignment: CrossAxisAlignment.stretch
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.deepOrange[800],
        padding: EdgeInsets.all(30.0),
        child: Text('inside container 1'),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.limeAccent,
        padding: EdgeInsets.all(50.0),
        child: Text('inside container 2'),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.green[800],
        padding: EdgeInsets.all(70.0),
        child: Text('inside container 3'),
      ),
    ),
  ],
)
