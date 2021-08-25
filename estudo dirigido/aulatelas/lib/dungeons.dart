import 'package:aulatelas/home.dart';
import 'package:flutter/material.dart';

class dungeons extends StatefulWidget {
  const dungeons({Key? key}) : super(key: key);

  @override
  _dungeonsState createState() => _dungeonsState();
}

class _dungeonsState extends State<dungeons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Dungeons', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              "imagens/Bastion_Remnant_4.png",
              width: 150,
              height: 100,
            ),
            Image.asset(
              "imagens/Shipwreck_Oak_(With_Mast).png",
              width: 150,
              height: 100,
            ),
            Image.asset(
              "imagens/EndCityEntrance.png",
              width: 150,
              height: 100,
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
      ),
    );
  }
}
