import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchDivers extends StatefulWidget {
  const SearchDivers({super.key});

  @override
  State<SearchDivers> createState() => _SearchDiversState();
}

class _SearchDiversState extends State<SearchDivers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
      Expanded(child: Container(
        
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.amberAccent,
          image: DecorationImage(image: AssetImage("assets/images/RepasDuJours.jpeg"), fit: BoxFit.cover)
        ),
        child: Stack(
          children: const [
            Positioned(child: Icon(Icons.menu, size: 30,))
          ],
        ),
      )),
       Expanded(child: Container(
        color: const Color.fromARGB(255, 64, 255, 182),
      )),
      ],
    ));
  }
}