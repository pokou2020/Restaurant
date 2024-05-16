
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testcode/detailEleve.dart';
import 'package:testcode/infoEleve.dart';
import 'package:testcode/main.dart';   
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

String? token;


@override




  void initState() {
  //  chekLogin();
    _getInfo();
    // TODO: implement initState
    super.initState();
  }


    List datas=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenu"),
        actions: [
          IconButton(onPressed: () async{
            SharedPreferences pref= await SharedPreferences.getInstance();
            pref.clear();
             Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage( )));
          
          }, icon:  const Icon(Icons.offline_pin_outlined))
         
        ],
      ),
      // ignore: unnecessary_null_comparison
      body:datas == null? const Center(child: CircularProgressIndicator(),): ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailEleve(
                  academicyear:datas[index]["academicyear"],
                  first_name:datas[index]["first_name"] ,
                  code: datas[index]["code"],
                  invoice: datas[index]["invoice"],
                   classroom: datas[index]["classroom"],
                )));
              },
              child: Container(
                height: 150,
                color: Colors.amber,
                child: Column(
                  children: [
                    Container(
                    height: 70,
                    width: 70,
                    
                    decoration: BoxDecoration(
                      shape:BoxShape.circle ,
                      image: DecorationImage(image: NetworkImage('https://scholarsapp.iesaciv.com/'+datas[index]['photo']))
                    ),
                    ),
                    Center(
                      child: Text(
                        datas[index]['last_name']
                      ),
                    ),
                    Center(
                  child: Text(
                    datas[index]['first_name']
                  ),
                ), 
                    Center(
                      child: Text(
                        datas[index]['classroom']
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future <void> _getInfo() async{

    SharedPreferences pref= await SharedPreferences.getInstance();
    String? token = pref.getString('login');

     var url = "https://backandroid.iesaciv.com/api/studentList/${token}";

    var response = await  http.get(Uri.parse(url));
      print("=== requete ===");

      print(response.body);

  print("=== requetes ===");
  
 var  data = jsonDecode(response.body); 
     
    if (response.statusCode == 200 ) {
      setState(() {
         datas= data;
      });
    }
  }
}


//   Future <void> _getInfo() async{

//     SharedPreferences pref= await SharedPreferences.getInstance();
//     String? token = pref.getString('login');

//      var url = "https://backandroid.iesaciv.com/api/studentList/${token}";

//     var response = await  http.get(Uri.parse(url));
//       print("=== requete ===");

//       // print(response.body);

//   print("=== requete ===");
//  var  data= jsonDecode(response.body); 
     
//     if (response.statusCode == 200 ) {
      
//       for (int i = 0; i < data.length; i++) {
//         print(data[i]["code_academic"]);
//         var url2 = "https://backandroid.iesaciv.com/api/academicYear/${data[i]["code_academic"]}";

//         var res = await  http.get(Uri.parse(url2));

//          var  dataStudent= jsonDecode(res.body+' '+response.body); 
//            print(dataStudent);

           
//       }
//       setState(() {
//          datas= dataStudent;
         
//       });


//     }
//   }