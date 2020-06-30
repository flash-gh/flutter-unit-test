import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_unit_test/pages/login.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Timer(const Duration(seconds: 4),onClose);
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Image.asset(
                "assets/logo.png"
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.05),
            Text(
              "MOVIEZONE",
              textAlign:TextAlign.center,
              style: TextStyle(
                           color: Colors.white,
                           fontSize: 25,
                           letterSpacing: 3,
                           fontFamily: "anydore",
                           fontWeight: FontWeight.w500,
            ),
            ),
          ],
        ),
      ),
      
    );
  }

  void onClose()
  { 
    Navigator.of(context).pushReplacement(new PageRouteBuilder
    (
      maintainState: true,
      opaque: true,
      pageBuilder: (context,_,__)=>Login(),
    ));

  }
}