//Lab 6

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      ///The Scaffold widget, from the Material library, provides a default app bar, a title,
      ///and a body property that holds the widget tree for the home screen.
      home: Scaffold(
        ///AppBar is usually the topmost component of the app (or sometimes the bottom-most),
        ///it contains the toolbar and some other common action buttons.
        appBar: AppBar(
          title: const Text('HELLO FLUTTER...MY FIRST APP'),
        ),
        //Body :- The primary content of the scaffold.
        //Center:- Used to center the widget
        body: Center(
          child: Text(
            "Welcome",
            style: TextStyle(fontFamily: 'Poppins'),
          ),
        ),
        //Floating action button is used create button at bottom right corner
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("Click"),
        ),
      ),
      debugShowCheckedModeBanner: false,
    ));

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
