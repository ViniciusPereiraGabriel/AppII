import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false, //desativando o banner
  ));
}

//stf+enter

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de login"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(width: 3,color: Colors.amber)
        ),
        child: Column(
          //espaçamento antes e depois do objeto

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Image.asset("imagens/amazon.png"),
            //entrada de dados
        TextField(
          decoration: InputDecoration(labelText:"digite seu email"),
          keyboardType: TextInputType.emailAddress,
        ),
            TextField(
              decoration: InputDecoration(labelText:"digite sua senha"),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),


            RaisedButton(
              child: Text("logar"),
              color: Colors.amber,
              onPressed: (){
                print("logado");
              },
            )
          ],
        ),
      ),
    );


  }
}



