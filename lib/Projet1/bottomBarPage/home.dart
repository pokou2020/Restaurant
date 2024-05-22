import 'package:flutter/material.dart';
import 'package:testcode/Projet1/DetailRepas.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    final _textcontrollerrecherche = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
              
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
      Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Row(
                  children: [
                    Text(
                      "Cote d'ivoire",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.flag,
                      color: Colors.orange,
                    )
                  ],
                ),
           
          
          
              ],
            ),
                  const SizedBox(
              height: 15,
            ),
                 Row(
              children: [
                Text(
                  "Bienvenu",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
               const SizedBox(
              height: 15,
            ),
                 Row(
              children: [
                Text(
                  "Monde des recettes",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
                  const SizedBox(
              height: 15,
            ),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(110, 224, 224, 224)
                      ),
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
                Container(
                  height: 50,
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
            
                ],
               ),
            )),
       
           const SizedBox(
              height: 20,
            ),
        
          
               SizedBox(
                      

                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
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
           Expanded(
            flex: 4,
            
            child: Container(
          
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 
                Container(
                 
                
                  height: MediaQuery.of(context).size.height/2,
                  child: GridView.builder(
                     itemCount: 5,

                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount:  2), 
                    itemBuilder: (context, index) {
                  return    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailRepas()));
                      },
                      child: Container(
                        
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Container(
                              height: 100,
                              decoration: BoxDecoration(
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
                  decoration: BoxDecoration(
                    color: Color.fromARGB(162, 0, 0, 0),
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.favorite_border, color: Colors.white,),
                )
                )
                                ],
                              ),
                             ),
                           const  SizedBox(height: 3,),
                            const Text("Riz sauce graine",
                             style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                             ),
                             ),
                           const  SizedBox(height: 3,),
                               const Text("Par Nath's",
                             style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                             ),
                             ),
                              const  SizedBox(height: 3,),
                            Row(
                              children: [
                                Icon(Icons.watch_later_outlined,  color: Colors.orange,size: 15,),
                                const  SizedBox(width: 5,),
                                 Text("35 min", 
                                   style: TextStyle(
                               color: Colors.orange,
                              fontSize: 12
                             ),
                             
                                 ),
                                 SizedBox(width: 5,),
                                   Icon(Icons.star_border,  color: Colors.orange,size: 15,),
                                   
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
                    ),
                  );
                  },),
                )
              ],
             ),
           ))
          
       
                // Container(
                //     height: MediaQuery.of(context).size.height/3,
                //     width: MediaQuery.of(context).size.width/2,
                //     decoration: BoxDecoration(
                //       color: Colors.black,
                //       borderRadius: BorderRadius.circular(5)
                //     ),
                //     child: const Column(children: [
                       
                //     ],),
                //   )

              //  ListView.builder(
              //   itemCount: 5,
              //   itemBuilder: (context, index) {
              //     return Container(
              //       height: MediaQuery.of(context).size.height/3,
              //       width: MediaQuery.of(context).size.width/2,
              //       decoration: BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.circular(5)
              //       ),
              //     );
              //   },
              //   )
          ],
        ),
      );
  }
}