import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class SearchDivers extends StatefulWidget {
  const SearchDivers({super.key});

  @override
  State<SearchDivers> createState() => _SearchDiversState();
}

class _SearchDiversState extends State<SearchDivers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(
            height: 3.h,
          ),
         const Padding(
            padding: const EdgeInsets.only(left:13,top: 13),
            child:  Text(
              "Autre évenement",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
        const  Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: SizedBox(
               
               
                child: ListView.builder(
                  itemBuilder: (context, index){
                return   Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 7.h,
                          width: 11.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/graines.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:  [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                 Container(
                                   child: const Text(
                                      "Nourriture Ivoirienne ",
                                      style:
                                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                    ),
                                 ),
                                 SizedBox(width: 23.w,),
                                   Container(
                                     child: Row(
                                                   children: const [
                                                     Icon(
                                                       Icons.edit,
                                                       color: Colors.blue,
                                                     ),
                                                     Text(
                                                       "Food",
                                                       style: TextStyle(fontSize: 15, color: Colors.grey),
                                                     ),
                                                   ],
                                                 ),
                                   ),
                              ],
                            ),
                                         SizedBox(
                      height: 0.5.h,
                    ),
                             const Text(
                                "Cette nourriture vient du pays bete elle est faite à  ",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                               SizedBox(
                      height: 0.5.h,
                    ),
                            const  Text(
                                " base de graine ",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                     Divider(),
                  ],
                );
                
                }
                ),
              ),
            ),
          ),
      ],
    ));
  }
}