import 'dart:html';
import 'package:flutter/material.dart';
class layout1 extends StatefulWidget {
  const layout1({Key? key}) : super(key: key);

  @override
  _layout1State createState() => _layout1State();
}

class _layout1State extends State<layout1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testando"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Image.asset(
                "imagens/teste.jpg",
                  width: 150,
                  height: 100,
              ),
            RaisedButton(
              child: Text("achar bonito"),
              color: Colors.amber,
              onPressed: (){
                print("bonito");
              },
            ),
            Image.asset(
              "imagens/flowers.jpg",
              width: 150,
              height: 100,
            ),
            RaisedButton(
              child: Text("achar bonito"),
              color: Colors.amber,
              onPressed: (){
                print("bonito");
              },
            ),
            Image.asset(
              "imagens/poppy.jpg",
              width: 150,
              height: 100,
            ),
            RaisedButton(
              child: Text("achar bonito"),
              color: Colors.amber,
              onPressed: (){
                print("bonito");
              },
            ),
            Image.asset(
              "imagens/tree.jpg",
              width: 150,
              height: 100,
            ),
            RaisedButton(
              child: Text("achar bonito"),
              color: Colors.amber,
              onPressed: (){
                print("bonito");
              },
            ),
          ],
        ),
      ),
    );
  }
}
