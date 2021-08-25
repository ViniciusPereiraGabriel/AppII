import 'package:flutter/material.dart';
import 'package:projetofinal1/brinquedos.dart';
import 'package:projetofinal1/estoucomsorte.dart';
import 'package:projetofinal1/login.dart';
import 'package:projetofinal1/roupas.dart';

class calcados extends StatefulWidget {
  const calcados({Key? key}) : super(key: key);

  @override
  _calcadosState createState() => _calcadosState();
}

class _calcadosState extends State<calcados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
            'Calçados'
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
                      'R\$ 150,00',
                    ),
                    Text(
                      'tênis',
                    ),
                    Image.network(
                      'data:image/jpeg;base64,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BERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERB//2Q==',
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
                      'R\$ 55,00',
                    ),
                    Text(
                      'chinelo',
                    ),
                    Image.network(
                      'data:image/jpeg;base64,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dcDLobNk2P8AV+4V9R5eZEgczF+tgB8EZQa3QR8/qp/DOFVsS/JRY553Is0eLjYfFJmT6aurZ7Y+FF7KjDTk1M7MnMvzDKPMwvo5eK7Idh24ZwrViKlYDugexTMXLZu535jHQbr2qscqqiIqii4n6TalY412dpawNa2iYgOYAC4gjXvudPku2KHj+H0q7SyrTbUadnAGDzHI9RdFj5sc0HUfC3+lQU+Tvjb6Lq/G/RcxxzYar6sXllSXtnbK+cwHjmXPOIcCxFBzmVKNTukjOGOLHAH2mvaIIPjN7gIvWua540v4Qfoq/wARzb+h+6FoHMK8Tznx/wBqKqKrdi4eVv35rKx52eD4rEKf5AfD/wCSqlg3Dh5/cKcXrJWLyCAQfA/RVo5mU8uR0nW1so9kWHisBYNjHl9iFUNI0d9VLOtZ1c+yXe67/E/ZXUpLhIcBYElrtOf+lUOf70+Z+yvFR+zv/IfqFnwbny0q+qfJeHF3eIywGgHlO8q7AV2soiXayRa5h1r+Ef5Kz1j/ABPi37J/EP8AdHwalz2cTPyc1dMOJrl57oJ8pTDh3e7pnLaRvI3OlpM9I3WR1Z5/YVri87/P7KzMS/JaVgXPa92XuzO0jlZWPY0kue4uJJJA7ovfx+CuFM7n4KopAbfHVa5GfKrGPGjGAeXzPNV9TPtHyCz0qZccrQXH3Wj9AvRcN7FYutByZGnd9vlqrxnrzDaYGw+qunqulYP0XA3q13HoxoHzP2W+wPo+wNOCaZqH87iR8LBOJ5OMU2l5hjXPPJoLj8At5gOyGOqxloFg96oQ35art2E4fSpCKdNjBya0D6KUryHXMeF+jA2OIrT+SmIHhmN17vg/BKOGblpMyjxknxW0RGRERAREQEREGGqJXm+OAhpygkr1BErBUwrXIODcew1VzyXA20jbzWicx7f9r6FxXAKb9QFpsV2EpO0sr6XriQqOGyyNxR5H4/8AC6rW9GzTo8KK70ZO2e1OReub/wAUDr8wCqjEs5fIroo9GL/fasjfRi7eo34Kch1zf+IZ0T+IZzHxXUGejNu9T4BS6Xo2oDV7j4AJyHXJf4hnMf5KorU/eH+QXZaXo9wg1znzH2U6j2Nwbf8Atz4kqch5OHiNgT4f8KZheG1qlmUXv/paT813TD8Fw9P2aLB1yifiVPa0CwAHgnIdcbwPYPG1IzMbSG5e6/8Ai2V6jh3o0otvWqPqH3W91v3+a98iqda3hvA8PQEUqTGdQL/E3WyAVURBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQf//Z',
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