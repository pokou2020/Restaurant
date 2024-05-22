import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:testcode/Projet2/screem/bottomBarSopping/bottonBarPage.dart';
// import 'package:sizer/sizer.dart';


void main() {
  
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
         
            primarySwatch: Colors.blue,
          ),
          // home: const RestoAcceuil(),
          home: const Bottonbarpage(),
        );
      }
    );
  }
}








