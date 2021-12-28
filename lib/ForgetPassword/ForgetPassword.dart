import 'package:charm/SignUp/Hobbies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_color.dart';
import 'InputOtpPage.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: AppColor.bgColor,
          title:
          Center(child: Image(image: AssetImage('assets/horizontal.png')))),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
        Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Center(
          child: Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0)),
              child: Image(image: AssetImage('assets/key.png'),color: Colors.red)),
        ),
      ),
      Padding(
       padding: const EdgeInsets.only(left:15.0,right: 15.0,top:25,bottom: 0),
       // padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          'Forget Password',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                  ),
                ),
              ),
        FlatButton(
          onPressed: () {
            //TODO FORGOT PASSWORD SCREEN GOES HERE
          },
          child: Text(
            'Enter your Registered mobile no/ Email id ',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => InputOtpPage()));
              },
              child: Text(
                'Get Otp',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        ],
      ),
    ),);
  }
}