import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:testcode/Projet1/BottomBarPage/home.dart';
import 'package:testcode/Projet3/screem/bottombar/homeDivers.dart';
import 'package:testcode/Projet3/screem/bottombar/profilDivers.dart';
import 'package:testcode/Projet3/screem/bottombar/searchDivers.dart';

import 'galerieDivers.dart';

class BottomBarPageDivers extends StatefulWidget {
  const BottomBarPageDivers({super.key});

  @override
  State<BottomBarPageDivers> createState() => _BottomBarPageDiversState();
}

class _BottomBarPageDiversState extends State<BottomBarPageDivers> {

  int currentIndex = 0;

  List <Widget> body= const[
    HomeDivers(),
    SearchDivers(),
    GalerieDivers(),
    ProfilDivers()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:body[ currentIndex],
      bottomNavigationBar: BottomNavigationBar(items:const [
         BottomNavigationBarItem(
          label: "",
          backgroundColor: Colors.black,
          icon: Icon(Icons.home)),
           BottomNavigationBarItem(
          label: "",
          backgroundColor: Colors.black,
          icon: Icon(Icons.search)),
          BottomNavigationBarItem(
          label: "",
          backgroundColor: Colors.black,
          icon: Icon(Icons.pie_chart)),
          BottomNavigationBarItem(
          label: "",
          backgroundColor: Colors.black,
          icon: Icon(Icons.person_sharp)),
      ],
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      backgroundColor:  Colors.black,
       showSelectedLabels: true,
       currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex=value;
        });
      },
      ),
    );
  }
}