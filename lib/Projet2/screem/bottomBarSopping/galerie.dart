import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:testcode/Projet1/DetailRepas.dart';

class Galerie extends StatefulWidget {
  const Galerie({super.key});

  @override
  State<Galerie> createState() => _GalerieState();
}

class _GalerieState extends State<Galerie> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
      
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu, size: 35,),
            Icon(Icons.search, size: 35,)
          ],
         ),
         SizedBox(height: 4.h,),
         Text('Toute les Categories',
         style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold
         ),
         ),

         Expanded(
           child: Container(
           
             child: GridView.builder(
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                     mainAxisExtent: 200,
                     crossAxisSpacing: 2,
                  crossAxisCount:  2),
              itemBuilder: (context, BuildContext){
              return   Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                      
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5)
                     ),
                     child:  Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Container(
                         height: 130,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           image: const DecorationImage(image: AssetImage("assets/images/teeshirt.jpg"), fit: BoxFit.cover)
                         ),
                        
                        ),
                      const  SizedBox(height: 3,),
                       const Text("Style homme",
                        style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 15
                        ),
                        ),
                      const  SizedBox(height: 3,),
                          const Text("502 en stock",
                        style: TextStyle(
                         color: Colors.grey,
                         fontSize: 12
                        ),
                        ),
                         const  SizedBox(height: 3,),
                
                     ],),
                   ),
               );
             }),
           ),
         )
        ],
      ),
    ));
  }
}