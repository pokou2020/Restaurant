import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

class ShoppingHome extends StatefulWidget {
  const ShoppingHome({super.key});

  @override
  State<ShoppingHome> createState() => _ShoppingHomeState();
}

class _ShoppingHomeState extends State<ShoppingHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
          color: Colors.amber,
        )),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 10 , right: 10),
            child: Container(
              color: Colors.amber,
            child: ListView.builder(
            
            scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index){
              return Container(
                height: 100.h,
                
                           
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height:15.h,
                          width: 15.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                          ),
                        ),
                      ),
                      // Text("Free", 
                      // style: TextStyle(
                      //   fontSize: 10
                      // ),
                      // ),
                      // Text("Delivrery",
                      //   style: TextStyle(
                      //   fontSize: 10
                      // ),
                      // )
                    ],
                ),
              );
            }),
                    ),
          )),
        Expanded(
          flex: 6,
          child: Container(
          color: Colors.greenAccent,
        ))
      ],
    ));
  }
}