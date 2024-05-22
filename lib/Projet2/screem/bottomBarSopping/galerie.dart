import 'package:flutter/material.dart';

class Galerie extends StatefulWidget {
  const Galerie({super.key});

  @override
  State<Galerie> createState() => _GalerieState();
}

class _GalerieState extends State<Galerie> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      color: Colors.red,
    ));
  }
}