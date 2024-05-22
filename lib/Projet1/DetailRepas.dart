import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:testcode/Projet1/resto_acceuil.dart';


class DetailRepas extends StatefulWidget {
  const DetailRepas({super.key});

  @override
  State<DetailRepas> createState() => _DetailRepasState();
}

class _DetailRepasState extends State<DetailRepas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(child: Container(
          width: MediaQuery.of(context).size.width,
         decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          ),
          image: DecorationImage(image: AssetImage("assets/images/RepasDuJours.jpeg"), fit: BoxFit.cover)
         ),
          child: Stack(
            children: [

              Positioned(
                left: 15,
                top: 40,
                child: InkWell(
                    onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RestoAcceuil()));
              },
                  child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(103, 0, 0, 0),
                   shape: BoxShape.circle
                  ),
                  child: const Center(child: Icon(Icons.arrow_back_ios, color: Colors.white,size: 15,)),
                                ),
                ))
            ],
          ),
        )
        ),

          Expanded(child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top:10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              const Text("Riz sauce graine",
                                 style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                 ),
                                 ),
                                 Container(
                                   child: Row(
                                      children: [
                                        Icon(Icons.flatware_sharp, color: Colors.orange,),
                                        Text('Repas',
                                        style: TextStyle(
                                           color: Colors.orange
                                        ),
                                        )
                                      ],
                                   ),
                                 )
                              ],
                            ),
                            const SizedBox(height: 10,),
                               const Text("Par Nath's",
                             style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                             ),
                             ),
                            const  SizedBox(height: 10,),
                            Row(
                              children: [
                                 const Icon(Icons.watch_later_outlined,  color: Color.fromARGB(255, 245, 81, 6),size: 15,),
                                 const SizedBox(width: 5,),
                                 const Text("35 min", 
                                   style: TextStyle(
                               color: Colors.orange,
                              fontSize: 12
                             ),
                             
                                 ),
                                const SizedBox(width: 5,),
                                   const Icon(Icons.star_border,  color: Color.fromARGB(255, 255, 81, 0),size: 15,),
                                   
                                 const Text("4.5", 
                                   style: TextStyle(
                              color: Color.fromARGB(255, 255, 81, 0),
                              fontSize: 12
                             ),
                                 ),
          
                              ],
                             ),
                             const SizedBox(height: 10,),
                                const Text("Comment préparer",
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                             ),

                             ),
                              const SizedBox(height: 10,),

                             Container(
                              height: 18,
                              width: MediaQuery.of(context).size.width,
                              child: const Text("La cuisine ivoirienne comporte différents plats",
                               style: TextStyle(color: Colors.grey),
                              ),
                             ),
                             const SizedBox(height: 3,),
                             Container(
                              height: 18,
                              width: MediaQuery.of(context).size.width,
                              child: const Text("provenant de tous les groupes ethniques qui.",
                               style: TextStyle(color: Colors.grey),
                              ),
                             ),
                             const SizedBox(height: 3,),
                             Container(
                              height: 18,
                              width: MediaQuery.of(context).size.width,
                              child: const Text("constituent la population du pays. ",
                              style: TextStyle(color: Colors.grey),
                              )
                             ),
                                const SizedBox(height: 10,),
                                const Text("Ingrédients",
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                             ),),
                             const SizedBox(height: 5,),
                             Row(
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 81, 0),
                                    shape: BoxShape.circle
                                  ),
                                ),
                             const   SizedBox(width: 5,),
                            const    Text("Piment",
                            style: TextStyle(
                                color: Colors.grey
                               ),
                            )
                              ],
                             ),
                             const SizedBox(height: 5,),
                                  Row(
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                   color: Color.fromARGB(255, 255, 81, 0),
                                    shape: BoxShape.circle
                                  ),
                                ),
                                const SizedBox(width: 5,),
                               const Text("Tomate",
                               style: TextStyle(
                                color: Colors.grey
                               ),
                               )
                              ],
                             ),
                             const SizedBox(height: 5,),
                                  Row(
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 81, 0),
                                    shape: BoxShape.circle
                                  ),
                                ),
                               const SizedBox(width: 5,),
                               const Text("Cube magie",
                               style: TextStyle(
                                color: Colors.grey
                               ),
                               )
                              ],
                             ),
 const   SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width/1.7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                   color: Color.fromARGB(255, 255, 81, 0)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                     const Icon(Icons.play_circle_outline_outlined, color: Colors.white,),
                                     SizedBox(width: 5,),
                                     const  Text("Regardez la vidéo",
                                      style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                      ),
                                      )
                                    ],
                                  ),
                             ),
                                 Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width/7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                     color: const Color.fromARGB(106, 255, 153, 0)
                                  ),
                                   child: const Icon(Icons.share, color: Color.fromARGB(255, 255, 81, 0),),
                             ),
                                Container(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width/7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: const Color.fromARGB(106, 255, 153, 0)
                                  ),
                                  child: const Icon(Icons.favorite, color: Color.fromARGB(255, 255, 81, 0),),
                             ),
                                ],
                              ),
                               const   SizedBox(height: 3,),
                             


          
            ]),
          ),
        ))
      ]),

   
    
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //  child:    Row(
      //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                           children: [
      //                             Container(
      //                             height: 50,
      //                             width: MediaQuery.of(context).size.width/1.7,
      //                             decoration: BoxDecoration(
      //                               borderRadius: BorderRadius.circular(5),
      //                              color: Color.fromARGB(255, 255, 81, 0)
      //                             ),
      //                             child: Row(
      //                               mainAxisAlignment: MainAxisAlignment.center,
      //                               children: [
      //                                const Icon(Icons.play_circle_outline_outlined, color: Colors.white,),
      //                                SizedBox(width: 5,),
      //                                const  Text("Regardez la vidéo",
      //                                 style: TextStyle(
      //                                       color: Colors.white,
      //                                       fontWeight: FontWeight.bold
      //                                 ),
      //                                 )
      //                               ],
      //                             ),
      //                        ),
      //                            Container(
      //                             height: 50,
      //                             width: MediaQuery.of(context).size.width/7,
      //                             decoration: BoxDecoration(
      //                               borderRadius: BorderRadius.circular(5),
      //                                color: const Color.fromARGB(106, 255, 153, 0)
      //                             ),
      //                              child: const Icon(Icons.share, color: Color.fromARGB(255, 255, 81, 0),),
      //                        ),
      //                           Container(
      //                             height: 50,
      //                             width: MediaQuery.of(context).size.width/7,
      //                             decoration: BoxDecoration(
      //                               borderRadius: BorderRadius.circular(5),
      //                               color: const Color.fromARGB(106, 255, 153, 0)
      //                             ),
      //                             child: const Icon(Icons.favorite, color: Color.fromARGB(255, 255, 81, 0),),
      //                        ),
      //                           ],
      //                         ),
      // ),
    );
  }
}