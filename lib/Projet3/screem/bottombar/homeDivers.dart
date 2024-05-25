import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeDivers extends StatefulWidget {
  const HomeDivers({super.key});

  @override
  State<HomeDivers> createState() => _HomeDiversState();
}

class _HomeDiversState extends State<HomeDivers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Row(
          
           children: const [
            Icon(Icons.menu, size: 30,),
            
            Text("Dimanche, 29 mai 2024",
            style: TextStyle(
              fontSize: 20
            ),
            )
           ],
        )
      ],
    ));
  }
}