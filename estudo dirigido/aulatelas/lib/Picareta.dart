import 'package:aulatelas/home.dart';
import 'package:flutter/material.dart';

class Picareta extends StatefulWidget {
  const Picareta({Key? key}) : super(key: key);

  @override
  _PicaretaState createState() => _PicaretaState();
}

class _PicaretaState extends State<Picareta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Picareta de Ferro', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.cyanAccent,
      ),
        body: ListView(
        children: <Widget>[
          Image.asset(
            "imagens/Iron_Pickaxe_JE3_BE2.png",
          ),
          ListTile(
            leading: Icon(Icons.add_alert),
            title: Text("notificar"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("adicionar informação"),
          ),
          ListTile(
            leading: Icon(Icons.add_photo_alternate_outlined),
            title: Text("adicionar imagem"),
          ),
          ListTile(
            leading: Icon(Icons.arrow_downward_sharp),
            title: Text("baixar informação"),
          ),
          RaisedButton(
              child: Text("voltar"),
              color: Colors.green,
              padding: EdgeInsets.all(20),
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => home()
                ),
                );
              }
          ),
         ],
        ),
    );
  }
}
