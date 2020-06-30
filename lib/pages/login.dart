import 'package:flutter/material.dart';
import 'package:flutter_unit_test/model/formcard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Stack(fit: StackFit.expand, children: <Widget>[
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/logo.png',
                        ),
                        Text('LOGO',
                            style: TextStyle(
                              fontFamily: 'Poppins-Bold',
                              fontSize: 20,
                              letterSpacing: .6,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text('Welcome',
                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          fontSize: 36,
                          color: Colors.redAccent,
                          letterSpacing: .6,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    FormCard(),
                  ],
                )))
      ]),
    );
  }
}
