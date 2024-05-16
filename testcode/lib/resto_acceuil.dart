import 'package:flutter/material.dart';

class RestoAcceuil extends StatefulWidget {
  const RestoAcceuil({super.key});

  @override
  State<RestoAcceuil> createState() => _RestoAcceuilState();
}

class _RestoAcceuilState extends State<RestoAcceuil> {
  final _textcontrollerrecherche = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 30),
        child: Column(
          children: [
            const Row(
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
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  "Bienvenu",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  "Monde des recettes",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300]),
                  child: TextField(
                    controller: _textcontrollerrecherche,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
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
                SizedBox(
                
                  height: MediaQuery.of(context).size.height/1.7,
                  child: GridView.builder(
                     itemCount: 5,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage("assets/images/graines.jpg"), fit: BoxFit.cover)
                            ),
                           ),

                          const Text("Riz sauce graine",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                           ),
                           ),
                             const Text("Par Nath's",
                           style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                           ),
                           ),
                         const  Row(
                            children: [
                              Icon(Icons.crop_din_outlined,  color: Color.fromARGB(255, 255, 81, 0),size: 15,),
                              
                               Text("35 min", 
                                 style: TextStyle(
                             color: Color.fromARGB(255, 255, 81, 0),
                            fontSize: 12
                           ),
                           
                               ),
                               SizedBox(width: 5,),
                                 Icon(Icons.crop_din_outlined,  color: Color.fromARGB(255, 255, 81, 0),size: 15,),
                                 
                               Text("4.5", 
                                 style: TextStyle(
                            color: Color.fromARGB(255, 255, 81, 0),
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
      ),
    );
  }
}
