
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:winou_transporit/deuxiem.dart';
import 'package:winou_transporit/location_firebase.dart';
import 'package:winou_transporit/splash/splash.dart';
import 'package:winou_transporit/widget/HomePage.dart';
import 'LocationApp.dart';
import 'home_page.dart';
import 'location_firebase2.dart';
import 'maps.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Location(),
    );
  }
}
