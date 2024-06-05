import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class HomeProjet4 extends StatefulWidget {
  const HomeProjet4({super.key});

  @override
  State<HomeProjet4> createState() => _HomeProjet4State();
}

class _HomeProjet4State extends State<HomeProjet4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(left: 2.h, right: 2.h),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All cards",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[200]),
                  child: Center(child: Icon(Icons.notifications_none_outlined)))
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            height: 9.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  height: 7.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Center(
                      child: Text(
                    "Physical card",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  height: 7.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                      child: Text(
                    "Virtual card",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Card(
            elevation: 10,
            child: Container(
              height: 26.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange[900]),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
              height: 8.h,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(29, 158, 158, 158)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.remove_red_eye_sharp),
                  SizedBox(
                    width: 2.w,
                  ),
                  Center(
                      child: Text(
                    "Show card details",
                    style: TextStyle(
                        
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
                ],
              )),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                        showModalBottomSheet(context: context, builder: (BuildContext context){
                 return Container(
                  height: 30.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                         SvgPicture.asset(
                          'assets/images/ice.svg',
                          semanticsLabel: 'My SVG Image',
                          height: 5.h,
                          width: 6.w,
                        ),

                        Text("Freeze this card"),
                         Container(
                          child: Column(
                            children: [
                              Text("You're about temporarily disable this card. "),
                               Text("You can enable the card here later ")
                            ],
                          ),
                         ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                    height: 9.h,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(31, 158, 158, 158),
                    ),
                    child:   Center(
                      child: Text(
                            "Canel",
                                 style: TextStyle(
                                  color: Colors.orange[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                          ),
                    ),),
                                Container(
                    height: 9.h,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                       color: Colors.orange[900],
                    ),
                    child:   Center(
                      child: Text(
                            "Freeze card",
                                 style: TextStyle(
                                  color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                          ),
                    ),),
                          ],
                        )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                       topRight: Radius.circular(20),
                    )
                  ),
                 );
              });
                },
                child: Container(
                    height: 9.h,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(47, 33, 149, 243),
                        border: Border.all(
                          color: Color.fromARGB(103, 33, 149, 243),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ice.svg',
                          semanticsLabel: 'My SVG Image',
                          height: 5.h,
                          width: 6.w,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Freeze card",
                               style: TextStyle(
                        
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                        ),
                      ],
                    )),
              ),
              InkWell(
                onTap: () {
       
                },
                child: Container(
                    height: 9.h,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(45, 230, 81, 0),
                        border:
                            Border.all(color: Color.fromARGB(90, 230, 81, 0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings, size: 30,),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Card settings",
                               style: TextStyle(
                        
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
