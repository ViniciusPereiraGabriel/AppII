import 'package:flutter/material.dart';
import 'package:projetofinal1/brinquedos.dart';
import 'package:projetofinal1/calcados.dart';
import 'package:projetofinal1/estoucomsorte.dart';
import 'package:projetofinal1/login.dart';
import 'package:projetofinal1/roupas.dart';

class infpolo extends StatefulWidget {
  const infpolo({Key? key}) : super(key: key);

  @override
  _infpoloState createState() => _infpoloState();
}

class _infpoloState extends State<infpolo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Product Name',
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 90),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'data:image/jpeg;base64,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',
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 16, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'camisa polo',
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 4, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'R\$120.00',
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 16, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'CAMISA POLO',
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'Polo ou camisa polo é um item da indumentária humana, unissexo, usada para cobrir o tronco, e derivada do uso desportivo. Tem formato de T com colarinho, pode ou não ter botões e bolso, e podem ser feitas numa grande variedade de tecidos.',
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 16, 20, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RaisedButton(
                            child: Text("comprar"),
                            color: Colors.green,
                            padding: EdgeInsets.all(20),
                            onPressed:(){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => estoucomsorte()));
                            }
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
