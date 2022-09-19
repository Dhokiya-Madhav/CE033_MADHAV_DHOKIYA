import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///SafeArea is basically a padding widget, which adds any necessary padding to your app,
        ///based on the device it is running on. If your app’s widgets are overlaying any of the
        ///system’s features like notches, status bar, camera holes, or any other such features,
        ///then SafeArea would add padding around the app, as required.
        body: SafeArea(
      child: Column(
        children: [
          TextButton.icon(
            onPressed: () {
              //Navigator used to manage the child widget into the stack
              Navigator.pushNamed(context, "/location");
            },
            icon: Icon(Icons.edit_location),
            label: Text("Edit Location"),
          ),
        ],
      ),
    ));
  }
}
