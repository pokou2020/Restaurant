import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class ActivateProjet4 extends StatefulWidget {
  const ActivateProjet4({super.key});

  @override
  State<ActivateProjet4> createState() => _ActivateProjet4State();
}

class _ActivateProjet4State extends State<ActivateProjet4> {
final defaultPinTheme= PinTheme(
   height: 75,
  width: 75,
  textStyle: TextStyle(
    fontSize: 22,
    color: Colors.black,

  ),
  decoration: BoxDecoration(
    color: Colors.orange[100],
    borderRadius:   BorderRadius.circular(15),
    border: Border.all(color: Colors.orange)
  )
 
);
  String enteredPin = '';
  bool isPinVisible = false;

  /// this widget will be use for each digit
  Widget numButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (enteredPin.length < 4) {
              enteredPin += number.toString();
            }
          });
        },
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Padding(
       padding:  EdgeInsets.only(left: 2.h, right: 2.h),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
        const  Text("Enter code",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
           ),
           SizedBox(height: 2.h,),
          const Text("A 4-digit code was sent to j*******ide@gmail.com.",
           
            ),
        
          const  Text("Enter the code to continue.",
          
            ),
      SizedBox(height: 2.h,),
            Text("Send to my phone number instead",
            style: TextStyle(color:Colors.orange[900],
            fontSize: 16,
            decoration: TextDecoration.underline,
            decorationColor:Colors.orange[900],
            
            ),
            ),
            SizedBox(height: 7.h,),
            Center(
              child: Container(
                child:Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: Colors.orange)
                    )
                  ),
                  
                )
              ),
            ),
           SizedBox(height: 7.h,),
           Center(child: Text("Didn't receive a code? Resend in")),
           Center(child: Text("05:00")),

           SizedBox(height: 3.h,),

          

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Container(
              height: 50,
              width: 50,
              child: Center(child: Text("1",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ))),
             Container(
                height: 50,
              width: 50,
              child: Center(child: Text("2",
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ))),
              Container(
                  height: 50,
              width: 50,
                child: Center(child: Text("3",
                 style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                ))),
           ],
           ),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Container(
              height: 50,
              width: 50,
              child: Center(child: Text("4",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ))),
             Container(
                height: 50,
              width: 50,
              child: Center(child: Text("5",
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ))),
              Container(
                  height: 50,
              width: 50,
                child: Center(child: Text("6",
                 style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                ))),
           ],
           ),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Container(
              height: 50,
              width: 50,
              child: Center(child: Text("7",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ))),
             Container(
                height: 50,
              width: 50,
              child: Center(child: Text("8",
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ))),
              Container(
                  height: 50,
              width: 50,
                child: Center(child: Text("9",
                 style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                ))),
           ],
           ),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Container(
              height: 50,
              width: 50,
              child: Center(child: Icon(Icons.backspace_outlined))),
              SizedBox(width: 35,),
             Container(
                height: 50,
              width: 100,
              child: Center(child: Text("0",
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ))),
              Container(
                  height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black
              ),
                child: Center(child: Icon(Icons.arrow_forward, color:Colors.white, size: 20,))),
           ],
           ),
           


           

           
        ],
      ),
          )),
    );
  }
}