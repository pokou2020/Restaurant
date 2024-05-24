import 'package:flutter/material.dart';
import 'package:testcode/Projet1/bottomBarPage/profil.dart';
import 'package:testcode/Projet2/screem/bottomBarSopping/galerie.dart';
import 'package:testcode/Projet2/screem/bottomBarSopping/panier.dart';
import 'package:testcode/Projet2/screem/bottomBarSopping/shoppingHome.dart';
import 'package:testcode/Projet2/screem/bottomBarSopping/util/couleur.dart';

class Bottonbarpage extends StatefulWidget {
  const Bottonbarpage({super.key});

  @override
  State<Bottonbarpage> createState() => _BottonbarpageState();
}

class _BottonbarpageState extends State<Bottonbarpage> {
  int _currentIndex=0;

  List<Widget> body= const[
    ShoppingHome(),
    Panier(),
    Galerie(),
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
         selectedItemColor:vertClaire,
        type: BottomNavigationBarType.fixed,
       currentIndex:_currentIndex , 
         onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        items: const [
        BottomNavigationBarItem(
           label: "Home",
          icon: Icon(Icons.home)),
         BottomNavigationBarItem(
           label: "Panier",
          icon: Icon(Icons.shopping_cart_rounded)),
          BottomNavigationBarItem(
             label: "Galerie",
            icon: Icon(Icons.pie_chart)),
           BottomNavigationBarItem(
             label: "Profil",
            icon: Icon(Icons.person_sharp)),
        
      ]),
    );
  }
}
