/*

Code test 1 Handling Error Try catch
 */


import 'package:flutter/material.dart';
import 'package:lab11/pages/home.dart';
import 'package:lab11/pages/loading.dart';
import 'package:lab11/pages/choose_location.dart';
/*import 'package:lab11//pages/home.dart';
import 'package:lab_9_tut2/pages/loading.dart';
import 'package:lab_9_tut2/pages/choose_location.dart';*/

void main() => runApp(MaterialApp(
//The name of the first route to show
    initialRoute: '/',
//Used to navigate between Screens
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }));
