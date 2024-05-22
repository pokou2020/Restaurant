import 'package:flutter/material.dart';


class Repas extends StatefulWidget {
  const Repas({super.key});

  @override
  State<Repas> createState() => _RepasState();
}

class _RepasState extends State<Repas> {
    final _textcontrollerrecherche = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 33),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Expanded(
              flex: 5,
              child:  Container(
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                const  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.menu),
              
              ],
            ),
            
            const SizedBox(height: 5,), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:const Color.fromARGB(110, 224, 224, 224)),
                  child: TextField(
                    controller: _textcontrollerrecherche,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Recherche de votre plat favoris',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
              const   SizedBox(height: 5,),
                Container(
                  height: 45,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(94, 255, 159, 103)),
                  child: const Icon(
                    Icons.voice_chat,
                    color: Color.fromARGB(255, 255, 81, 0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
                const Row(
              children: [
               Text(
                  "Repas du jours",
                
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
           
              ],
            ),
            const SizedBox(height: 10,),

               Container(height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
               image:const  DecorationImage(image: AssetImage("assets/images/RepasDuJours.jpeg"), fit: BoxFit.cover)
            ),
            child: Stack(
               children: [
             
              
                 

                     
              
                Positioned(child:      Container(height: MediaQuery.of(context).size.height/4.7,
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
              borderRadius: BorderRadius.circular(10),
              
            ),)),
               Positioned(
                  top: 2,
                   right: 2,
                  child: Container(
                  height: 40,
                  width: 40,
                  decoration:const BoxDecoration(
                    color: Color.fromARGB(162, 0, 0, 0),
                    shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.favorite_border, color: Colors.white,),
                )
                ),
             const  Positioned(
                  bottom: 50,
                   left: 4,
                  child:   Text("Riz sauce graine",
                           style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                           ),
                           ),
                        
                ),
                
                   const  Positioned(
                                   bottom: 30,
                   left: 4,
                                   child:Text("Par Nath's",
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                           ),
                           ),
                        
                                 ),
                    const Positioned(
                  bottom: 10,
                   left: 4,
                  child:  Row(
                            children: [
                              Icon(Icons.watch_later_outlined,  color: Colors.white,size: 15,),
                              SizedBox(width: 5,),
                               Text("35 min", 
                                 style: TextStyle(
                             color: Colors.white,
                            fontSize: 12
                           ),
                           
                               ),
                               SizedBox(width: 5,),
                                 Icon(Icons.star_border,  color: Colors.white,size: 15,),
                                 SizedBox(width: 5,),
                               Text("4.5", 
                                 style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                           ),
                               ),

                            ],
                           )
                ),
               ],
            ),
            ),
                ],
               ),
            )
            ),
  const SizedBox(height: 10,),
        
            Expanded(
              flex: 6,
              child: Container(
             
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                     
                        width: 70,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(94, 255, 159, 103),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text(
                            "Repas",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 81, 0)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "Desert",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "Plat d'accom...",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "Boisson et autre",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),

                   SizedBox(
                
                  height: MediaQuery.of(context).size.height/2.5,
                  child: GridView.builder(
                     itemCount: 5,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 210,
                   crossAxisCount:  2 ), 
                    itemBuilder: (context, index) {
                  return    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height/1.5,
                        width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Container(
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5),
                              image: const DecorationImage(image: AssetImage("assets/images/graines.jpg"), fit: BoxFit.cover)
                            ),
                            child: Stack(
               children: [
                Positioned(
                  top: 2,
                   right: 2,
                  child: Container(
                  height: 40,
                  width: 40,
                  decoration:const BoxDecoration(
                    color: Color.fromARGB(162, 0, 0, 0),
                    shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.favorite_border, color: Colors.white,),
                )
                )
               ],
            ),
                           ),
                    const SizedBox(height: 3,),
                          const Text("Riz sauce graine",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                           ),
                           ),
                          const SizedBox(height: 3,),
                             const Text("Par Nath's",
                           style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                           ),
                           ),
                         const  SizedBox(height: 3,),
                      const    Row(
                            children: [
                              Icon(Icons.watch_later_outlined,  color: Colors.orange, size: 15,),
                              SizedBox(width: 5,),
                               Text("35 min", 
                                 style: TextStyle(
                             color: Colors.orange,
                            fontSize: 12
                           ),
                          
                               ),
                               SizedBox(width: 5,),
                                 Icon(Icons.star_border,  color: Colors.orange,size: 15,),
                                 SizedBox(width: 5,),
                               Text("4.5", 
                                 style: TextStyle(
                            color: Colors.orange,
                            fontSize: 12
                           ),
                               ),

                            ],
                           )
                        ],),
                      ),
                  );
                  },),
                )
                ],
              ),
            )),
           
             
              
          ],
        ),
      );
  }
}