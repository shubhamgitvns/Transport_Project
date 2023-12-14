import 'package:flutter/material.dart';

import 'Comform_verifitation.dart';
import 'Phone_Verification.dart';
import 'Select_Language.dart';
import 'Select_Profile_Page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Transport',
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
       '/Verify_Number_Page': (context) => Verify_Number_Page(),
       '/Conform_verifitation_page': (context) =>   Conform_verifitation_page(),
       '/Profile_Page': (context) =>  Profile_Page(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage(
      title: '',
    );
  }
}

