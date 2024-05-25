import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

import 'util/couleur.dart';

class ShoppingHome extends StatefulWidget {
  const ShoppingHome({super.key});

  @override
  State<ShoppingHome> createState() => _ShoppingHomeState();
}

class _ShoppingHomeState extends State<ShoppingHome> {
   final _textcontrollerrecherche= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
                 image: DecorationImage(image: AssetImage('assets/images/Classique.jpg'), fit: BoxFit.cover),
            ),
          child: Stack(
            children: [
                  
              Positioned(child:      Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(66, 162, 206, 241),
              Color.fromARGB(150, 12, 12, 12),
            ],
          ),
            //color: Color.fromARGB(71, 0, 0, 0),
           
            
          ),)),
              Positioned(
                top: 10,
                left: 8,
                right: 8,
                                child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               Container(child: Icon(Icons.menu, color:Colors.white, size: 30,)),
                Container(
                  height: 35,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: TextField(
                    controller: _textcontrollerrecherche,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Recherche ',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
             
             Container(child: Icon(Icons.qr_code_scanner_outlined, color:Colors.white, size: 30,)),
              ],
            ),)
            ],
          ),
                  )
        ),
        SizedBox(height: 3.h,),
        Expanded(
          flex: 7,
          child: Container(
           
            child: ListView(
              children: [
              Container(
                 height: 15.h,
                 
                child: Expanded(
                        flex: 3,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 5 , right: 5),
                            child: Container(
                
                            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, BuildContext){
                return   Padding(
                  padding: const EdgeInsets.only( left: 4),
                  child: Container(
                    
                    
                               
                    child: Column(
                  
                   
                        children: [
                          Container(     
                       height: 9.h,
                       width: 15.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/profil5.jpg'), fit: BoxFit.cover),
                             
                              shape: BoxShape.circle
                            ),
                          ),
                          Container(
                            
                            child: Text("Free", 
                            style: TextStyle(
                              fontSize: 10
                            ),
                            ),
                          ),
                          Container(
                           
                            child: Text("Delivrery",
                              style: TextStyle(
                              fontSize: 10
                            ),
                            ),
                          )
                        ],
                    ),
                  ),
                );
                            })
                      ),
                        )),
              ),
             Expanded(
                      flex: 6,
                      child: Padding(
                       padding: const EdgeInsets.only(left: 10 , right: 10),
                      child: Container(
                    
                   child: Column(
                      
                       children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("À la mode",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                  Text("Voir plus",
                  style: TextStyle(
                    fontSize: 15,
                    color:vertClaire,
                  ),
                  )
              ],
            ),
             SizedBox(height: 3.h,),
            Container(
              height: 20.h,
              child: ListView.builder(
              
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, BuildContext){
                return Padding(
                 padding: const EdgeInsets.only(right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                        children: [
                          Container(
                            height: 12.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage('assets/images/mode2.jpg'), fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red
                            ),
                          )
                        ],
                       ),
                        SizedBox(height: 1.h,),
                           Text("Tshirts",
                      style: TextStyle(
                        fontSize: 12,
                        
                      ),
                      ),
                        Text("1200 fr homme",
                      style: TextStyle(
                        fontSize: 10,
                        
                      ),
                      ),
                        Text("Disponible",
                      style: TextStyle(
                        fontSize: 10,
                        
                      ),
                      ),
                     ],
                   ),
                );
              }),
            ),
                 SizedBox(height: 3.h,),      
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Pour vous",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                  Text("Voir plus ",
                  style: TextStyle(
                    fontSize: 15,
                    color: vertClaire,
                  ),
                  )
              ],
            ),
             SizedBox(height: 3.h,),
            Container(
              height: 20.h,
              
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
           
                itemCount: 3,
                itemBuilder: (context ,BuildContext){
                return   Padding(
                  padding: const EdgeInsets.only( right: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                        children: [
                          Container(
                            height: 12.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(image: AssetImage('assets/images/veste.jpg'), fit: BoxFit.cover),
                              color: Colors.red
                            ),
                          )
                        ],
                       ),
                        SizedBox(height: 1.h,),
                           Text("Tshirts",
                      style: TextStyle(
                        fontSize: 12,
                        
                      ),
                      ),
                        Text("1200 fr homme",
                      style: TextStyle(
                        fontSize: 10,
                        
                      ),
                      ),
                        Text("Disponible",
                      style: TextStyle(
                        fontSize: 10,
                        
                      ),
                      ),
                     ],
                   ),
                );
              }),
            )
                      
                       ],
                   ),
                  ),
                      ))
              ],
            ),
          ),
        ),
    
     
      ],
    ));
  }
}