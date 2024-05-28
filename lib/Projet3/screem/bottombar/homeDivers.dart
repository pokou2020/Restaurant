import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class HomeDivers extends StatefulWidget {
  const HomeDivers({super.key});

  @override
  State<HomeDivers> createState() => _HomeDiversState();
}

class _HomeDiversState extends State<HomeDivers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.menu,
                size: 30,
              ),
              SizedBox(width: 18.w),
              const Text(
                "Dimanche, 29 mai 2024",
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          const Text(
            "Les événements spéciaux d'aujourd'hui",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            height: 25.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    image: AssetImage("assets/images/mode1.jpg"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Journée nationale du thé chaud",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Row(
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
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          const Text(
            "Application de food  qui permet devaluer mon ",
            style: TextStyle(color: Colors.grey),
          ),
          const Text(
            "niveau dans design mobile",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 3.h,
          ),
          Divider(),
          SizedBox(
            height: 3.h,
          ),
          const Text(
            "Autre évenement",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 1.h,
          ),
        const  Divider(),
          Expanded(
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
       
        ],
      ),
    ));
  }
}
