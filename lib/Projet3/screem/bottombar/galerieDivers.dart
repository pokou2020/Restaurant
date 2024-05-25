import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GalerieDivers extends StatefulWidget {
  const GalerieDivers({super.key});

  @override
  State<GalerieDivers> createState() => _GalerieDiversState();
}

class _GalerieDiversState extends State<GalerieDivers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(child: Container(
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250
            ), itemBuilder: (context, index){

          return Container(
            height: 100,
            width: 100,
            color: Colors.red,
          );
        }),
      ),)
    
     );
  }
}