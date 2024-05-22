import 'package:flutter/material.dart';
import 'bottomBarPage/favoris.dart';
import 'bottomBarPage/home.dart';
import 'bottomBarPage/profil.dart';
import 'bottomBarPage/repas.dart';

class RestoAcceuil extends StatefulWidget {
  const RestoAcceuil({super.key});

  @override
  State<RestoAcceuil> createState() => _RestoAcceuilState();
}

class _RestoAcceuilState extends State<RestoAcceuil> {

  int _currentIndex=0;

  List <Widget> body=const [
    Home(),
    Repas(),
    Favoris(),
    Profil()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        selectedItemColor:Color.fromARGB(255, 255, 123, 0),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            
            label: "Home",
            icon:Icon (Icons.home, 
            )),
             BottomNavigationBarItem(
            label: "Repas",
            icon:Icon (Icons.food_bank, )),
             BottomNavigationBarItem(
            label: "Favoris",
            icon:Icon (Icons.favorite,)),
             BottomNavigationBarItem(
            label: "Profil",
            icon:Icon (Icons.people, )),
        ],
      ),
    );
  }
}
