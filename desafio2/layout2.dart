import 'package:flutter/material.dart';

class layout2 extends StatefulWidget {
  const layout2({Key? key}) : super(key: key);

  @override
  _layout2State createState() => _layout2State();
}

class _layout2State extends State<layout2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "imagens/abendstimmung.jpg",
                width: 750,
                height: 550,
              ),
              RaisedButton(
                child: Text("curtir"),
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
