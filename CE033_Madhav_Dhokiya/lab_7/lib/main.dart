//Lab 7

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      //home :This is the route that is displayed first when the application is started normally
      home: HomeScreen(),
    ));

///StatelessWidget :- A stateless widget is a widget that describes part of the user interface by
/// building a constellation of other widgets that describe the user interface more concretely.
class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ICON WIDGET APP'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Button'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.purple[800],
            //EdgeInsets :- padding inside a box can be represented using this class.
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            //textStyle is used to provide styling of the button
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

//Different types of button (Codes)


//     child: Directionality(
//   textDirection: TextDirection.rtl,
//   child: TextButton.icon(
//     icon: Icon(
//       Icons.photo_camera,
//       color: Colors.greenAccent,
//       size: 50.0,
//     ),
//     label: Text(
//       "Gallery",
//       style: TextStyle(
//         color: Colors.black,
//         fontSize: 40.0,
//         letterSpacing: 2.0,
//         backgroundColor: Colors.redAccent,
//       ),
//       textAlign: TextAlign.start,
//     ),
//     onPressed: () {},
//   ),
// )

// child: ElevatedButton(
//   child: Text('Button'),
//   onPressed: () {},
//   style: ElevatedButton.styleFrom(
//     primary: Colors.purple[800],
//     padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
//     textStyle: TextStyle(
//       fontSize: 40,
//       fontWeight: FontWeight.bold
//     ),
//   ),
// ),

//child: FlatButton(
//   onPressed: () {
//     print('Clicked');
//   },
//   child: Text('Click Me'),
//   color: Colors.blue,
// ),

//IconButton(
//   icon: Icon(
//     Icons.mail_outline_sharp,
//     size: 30.0,
//   ),
//   tooltip: 'Send mail',
//   onPressed: () {
//     print("Mail Sended");
//   },
// ),

//child: TextButton.icon(
//   icon: Icon(
//     Icons.photo_camera,
//     color: Colors.greenAccent,
//     size: 50.0,
//   ),
//   label: Text(
//     "Gallery",
//     style: TextStyle(
//       color: Colors.black,
//       fontSize: 40.0,
//       letterSpacing: 2.0,
//       backgroundColor: Colors.redAccent,
//     ),
//     textAlign: TextAlign.start,
//   ),
//   onPressed: () {},
// ),
