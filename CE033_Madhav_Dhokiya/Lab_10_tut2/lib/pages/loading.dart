import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lab_10_tut2/services/word_time.dart';
import 'dart:convert';

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
    setState(() {
      time = timeinstance.time;
    });
  }
  // void getTime() async {
  //   // Requesting
  //   Response response = await get(
  //       Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
  //   Map timeData = jsonDecode(response.body);
  //   print(timeData);

  //   //Printing data
  //   String dateTime = timeData['datetime'];
  //   String offset = timeData['utc_offset']; //not dst_offset
  //   print(dateTime);
  //   print(offset);
  //   DateTime currentTime = DateTime.parse(dateTime);
  //   print(currentTime);

  //   String offsetHours = offset.substring(1, 3);
  //   print(offsetHours);
  //   String offsetMinutes = offset.substring(4, 6);
  //   print(offsetMinutes);
  //   currentTime = currentTime.add(Duration(
  //       minutes: int.parse(offsetMinutes), hours: int.parse(offsetHours)));
  //   print(currentTime);
  // }

  // void getData() async {
  //   //Output will be in json form

  //   final response =
  //       await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  //   print(response.body);

  //   //Parses the string and returns the resulting Json object.
  //   Map data = jsonDecode(response.body);
  //   print(data);
  //   print(data['title']);

  //   //Creates a future that runs its computation after a delay.
  //   // String str1 = await Future.delayed(Duration(seconds: 4), () {
  //   //   return "Hello Madhav";
  //   // });

  //   // String str2 = await Future.delayed(Duration(seconds: 2), () {
  //   //   return "How are you!!";
  //   // });

  //   // print("$str1->$str2");
  // }

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
      ///SafeArea is basically a padding widget, which adds any necessary padding to your app,
      ///based on the device it is running on. If your app’s widgets are overlaying any of the
      ///system’s features like notches, status bar, camera holes, or any other such features,
      ///then SafeArea would add padding around the app, as required.
      body: Padding(
        padding: EdgeInsets.all(60.0),
        child: Text(time.toString()),
      ),
    );
  }
}
