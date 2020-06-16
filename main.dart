import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'ForgotPassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(228,63,63,1.0),
        //accentColor: Color.fromRGBO(204, 29, 29, 1.0)
      ),
      home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                        ),
                        hintText: 'Email Id'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                        ),
                        hintText: 'Password'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,40,0,0),
                  child: ButtonTheme(
                    minWidth: 310,
                    height: 55,
                    child: RaisedButton(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed:(){},
                      color: Color.fromRGBO(204, 29, 29, 1.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child : Text(
                      'Forgot Password',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        wordSpacing: 2,
                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotScreen()),
                      );
                    }
                  ),
                ),
              ],
            ),
          ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,20),
          child: Linkify(
            onOpen: (link) => print("Clicked ${link.url}!"),
            text: "Don't have an account? Create one ",
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}





