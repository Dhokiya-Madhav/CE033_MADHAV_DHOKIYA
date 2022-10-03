import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lab11/services/word_time.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  ////internal state for a StatefulWidget.
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? time = 'LOADING..........';
  void setWorldTime() async {
    WordTime timeinstance =
    WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');
    await timeinstance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location':timeinstance.location,
      'flag':timeinstance.flag,
      'time':timeinstance.time,
    });
  }


  //Called when this object is inserted into the tree.
  void initState() {
    super.initState();
    //print("Init state in location file");
    print("Before getData()");
    setWorldTime();
    print("After getData()");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,

      body: Center(
          child: SpinKitHourGlass(
            color: Colors.white,
            size: 50.0,
          ),
      )
    );
  }
}
