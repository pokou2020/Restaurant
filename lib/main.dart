import 'dart:convert';
import 'package:flutter/material.dart';
import 'Projet1/resto_acceuil.dart';


void main() {
  
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: const RestoAcceuil(),
    );
  }
}








