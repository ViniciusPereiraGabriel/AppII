import 'package:flutter/material.dart';
import 'package:projetofinal1/calcados.dart';
import 'package:projetofinal1/estoucomsorte.dart';
import 'package:projetofinal1/login.dart';
import 'package:projetofinal1/roupas.dart';

class brinquedos extends StatefulWidget {
  const brinquedos({Key? key}) : super(key: key);

  @override
  _brinquedosState createState() => _brinquedosState();
}

class _brinquedosState extends State<brinquedos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
            'Brinquedos'
        ),
      ),
      //pegar depois inicio
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Divider(),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                image: DecorationImage(
                  image: AssetImage("imagens/your.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                "Ver produtos diversos",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => estoucomsorte()));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Roupas",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  //mudar o estou com sorte para roupas
                    context, MaterialPageRoute(builder: (context) => roupas()));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Calçados",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  //mudar o estou com sorte para calçados
                    context, MaterialPageRoute(builder: (context) => calcados()));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Brinquedos",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.push(
                  //mudar o estoucom sorte para brinquedos
                    context, MaterialPageRoute(builder: (context) => brinquedos()));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Desconectar",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
            ),
          ],
        ),
      ),
      //pegar depois
      //papa
      //todas as paginas
      body: SafeArea(
        child: Align(
          alignment: Alignment(0, 0),
          child: Padding(
            padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: GridView(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 1,
              ),
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'R\$ 7,00',
                    ),
                    Text(
                      'hotweels',
                    ),
                    Image.network(
                      'https://www.extra-imagens.com.br/Control/ArquivoExibir.aspx?IdArquivo=1378027375',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),

                    //colocar botão
                    RaisedButton(
                        child: Text("Encontrar o mais barato"),
                        color: Colors.green,
                        padding: EdgeInsets.all(20),
                        onPressed:()
                        {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => estoucomsorte()),
                          );
                        }
                    ),

                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'R\$ 10,00',
                    ),
                    Text(
                      'woody do toy story',
                    ),
                    Image.network(
                      'data:image/jpeg;base64,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',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),

                    //colocar botão
                    RaisedButton(
                        child: Text("Encontrar o mais barato"),
                        color: Colors.green,
                        padding: EdgeInsets.all(20),
                        onPressed:()
                        {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => estoucomsorte()),
                          );
                        }
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}