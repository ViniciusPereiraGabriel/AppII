import 'package:aulatelas/dungeons.dart';
import 'package:flutter/material.dart';
import 'package:aulatelas/Picareta.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Diamantes', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "imagens/Diamond_JE3_BE3.png",
          width: 150,
          height: 100,
        ),
      Text("Como coletar?"),
      //ignore: deprecated_member_use
      RaisedButton(
      child: Text("Ferramentas"),
        color: Colors.green,
        padding: EdgeInsets.all(20),
        onPressed:(){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => Picareta()
          ),
          );
        }
      ),
        RaisedButton(
            child: Text("Outras formas de adquirir"),
            color: Colors.green,
            padding: EdgeInsets.all(20),
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => dungeons()
              ),
              );
            }
        ),
    ],
      ),
    ),
    );
  }
}
