import 'package:flutter/material.dart';
import 'login.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:10),()
    {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => login(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Carregando...",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )
            ),
            SizedBox(height: 5,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.indigo),
              strokeWidth: 11,
            ),
          ],
        ),
      ),
    );
  }
}
