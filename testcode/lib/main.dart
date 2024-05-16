import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testcode/provider/qrhome.dart';
import 'package:testcode/resto_acceuil.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: const RestoAcceuil(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var emailController= TextEditingController();
  var passController= TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chekLogin();
  }
  void chekLogin() async{
    SharedPreferences pref= await SharedPreferences.getInstance();
    String? val = pref.getString('login');
    // print(val);
    if ( val != null) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
TextFormField(
  controller: emailController,
  decoration: InputDecoration(
    labelText: "Email",
    border: OutlineInputBorder(),
    suffixIcon: Icon(Icons.email)

  ),
),
SizedBox(height: 20,),
TextFormField(
  controller: passController,
  decoration: InputDecoration(
    labelText: "password",
    border: OutlineInputBorder(),
    suffixIcon: Icon(Icons.password)

  ),
),

          SizedBox(height: 20,),


          OutlinedButton.icon(onPressed: () async {
 
//  final  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//           sharedPreferences.getString('email', emailController.text);
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
//     } 
             login();
             
          }, icon: Icon(Icons.login), label: Text("log"))
          ],

        ),
      )),
    );
  }

    Future<void> login() async {
    
      
 
    if (passController.text.isNotEmpty && emailController.text.isNotEmpty) {
         var response = await http.post(
      Uri.parse("https://backandroid.iesaciv.com/api/login"),
    
      body:({
        'email':emailController.text,
        'password':passController.text
      }),
 
    );
       print("=== requete ===");
       print(response.body);
   
      if (response.statusCode==200) {
         final body = jsonDecode(response.body);
          // ignore: avoid_print
          print("=== requete ====== requete ====== requete ===");
         // ignore: avoid_print
        //  print("login token"  + body['token'] );
          // ignore: avoid_print
          print("=== requete ====== requete ====== requete ===");
            //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text( "Token : ${body['token' ]}")) );
            SharedPreferences pref= await SharedPreferences.getInstance();
            await pref.setString("login", body['token']);


         Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        
   
      }else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("invalide")) );
    }
    }else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("vide")) );
    }
   
  }
}





