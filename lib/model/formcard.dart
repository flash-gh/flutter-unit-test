import 'package:flutter/material.dart';
import 'package:flutter_unit_test/pages/movie.dart';

class FormCard extends StatefulWidget {
  @override
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0,
              ),
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text('Email',
                    style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 26,
                    )),
                TextFormField(
                  validator: FormValidator.validateEmail,
                  onSaved: (value) {
                    _email = value.trim();
                  },
                  decoration: InputDecoration(
                      hintText: 'username@gmail.com',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Text('Password',
                    style: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      fontSize: 26,
                    )),
                TextFormField(
                  obscureText: true,
                   validator: FormValidator.validatePassword,
                    onSaved: (value) {
                      _password = value.trim();
                    },
                  decoration: InputDecoration(
                      hintText: 'password',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Center(
                  child: SizedBox(
                    height: 35,
                    width: 150,
                    child: FlatButton(
                        onPressed: login,
                      color: Colors.redAccent,
                      splashColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)),
                      child: const Text('Login',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
               
                             ],
            ),
          )),
    );
  }
  login() async {
    final FormState form = _formkey.currentState;
    if (!form.validate()) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Scaffold.of(context).showSnackBar(
            SnackBar(content: Text('Please enter valid details')));
      });
    } else {
      form.save();
      Navigator.push(context, MaterialPageRoute(builder: (context) => MovieZone()),);
                  
    }
  }
}

class FormValidator {
  static String validateEmail(String email) {
    if (email.isEmpty) return "Please enter an email!";
    Pattern pattern =
        r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(email)) {
      return "Please enter a valid email";
    }
    return null;
  }

  static String validatePassword(String value) {
    if (value.isEmpty) return 'Please choose a password.';
    if (value.length < 8) return 'Password must contain atleast 8 characters.';
    return null;
  }
}


