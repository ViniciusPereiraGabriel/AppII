import 'package:flutter/material.dart';
import 'package:projetofinal1/brinquedos.dart';
import 'package:projetofinal1/calcados.dart';
import 'package:projetofinal1/infpolo.dart';
import 'package:projetofinal1/login.dart';
import 'package:projetofinal1/roupas.dart';

class estoucomsorte extends StatefulWidget {
  const estoucomsorte({Key? key}) : super(key: key);

  @override
  _estoucomsorteState createState() => _estoucomsorteState();
}

class _estoucomsorteState extends State<estoucomsorte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
        'Diversos produtos'
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
            //todas as paginas
            Text(
              'R\$ 125,00',
            ),
            Text(
              'Camisa polo',
            ),
            Image.network(
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxASEhUTEhIVEhUVFhIVFRUVFRUVFRUVFRUWFhUVFxUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGA8PFzcdHR03Li0tLTI3Ky4tKy0tKysrLS0tLS0rLSsrLS0tKystKy0rLSsrLS0tLS0rKzctKysrLf/AABEIAPQAzgMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAwYCBAUBB//EAD8QAAIBAgIFCgMFBgcBAAAAAAABAgMRBCEFBjFBURIiYXGBkaGxwdETMnIHM1KSshYjQmKiwiRTY3OC4fDS/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAEDBAL/xAAfEQEBAAIBBQEBAAAAAAAAAAAAAQIDMRESITJRE0H/2gAMAwEAAhEDEQA/APuIAAAAAAAAAAAAADXxmNp0o8qpNQXFs0P2jw21SbXFL3LMbeIOuDjrWTD8Zdy9zx6y4fjLuXueuzL4OyDkx1hw73tdi9zbwOkqNb7ualbbx7mS42cwbYAPIAAAAAAAAAAAAAAAAAAAAAANfF42nTXPklwW1vqRwsZrLK6VOCSbtypZvuWzvZ6xwuXAqP2m15u083CM3F8FZ2j2FUo6eVrcOCPoONw8a0JU6ivGSafbvvxPlGsGgZ4Sdppzpt8yedn0S4S89x19e2PSw09O7rPuZItK33PuZRcTX5MV8OEXtvk3uyIHiJu/MStyt1vp39SPN29B9AljasnldeBYtWsW6dpfLaVNN9bs/BvvPm+AwDrVIxpRbb6XZLfJvci6YmnGlCFGDvyc5S3yk9r/APcD3L3eB9hTPSi6va0unGNOsnJZ2ktqWWTT2rMueExlOqr05qS6Nq61tRyZ4XHl5TgA8AAAAAAAAAAAAAAA0tI6ShS25yexL1e4reO0nVqZN2j+GOS7eJ7x13IWHGaXpU8r8p8I5972I4eM05VnlHmLo29/sc2wsb468Yo7t3eb4s8msthmkDQSwkmiPFYOFSLhOKnGWTTV0zBp7V/0akq+Ku0lSUdzfKb7roL1UbWb7N5Su8NVUVe6hUvbY8lNX8UcHAah42rVlGbp0qcs5S5cZuyafNgs2+u20+o4hVHKHLkpq+cbWhlZ/Lv2b2+g28bQpVJcv4UYfKrJLdvuks/ZHi65ajn6P0bDD01SoxtklKb+aVt7fpsJaWi1e8sz1xktk5rtUv1JmtVp1ndfHnZq2yC8VFNGis0oObad0ub1tfN45dhs0a3Id4tp8U7Ghg8JyFbcbNio7mF1nrQyklNdO3vO3gdZaE8pXpvp2d5SbGE4meWrGj6jCaaummnvTujI+Z4XG1KecJOL6Ht61vLNoXWdTahWtFvJS2JvpW7rMMtNnmeUWYAGQAAAAABDi8QqcHJ7tnS9yJjh6xV84w/5PyXqesMet6LHIxVRzblJ3bdzXaJJMwOyKxsLGQA8AFgPLGLRm0YMIxns7T2VOW1ppPY2mk+riYVN3WiedaTik3dRyWzZ67EFaTiRtGy0QzKiOx4z08uUeM8Z6YsAzWqw37LZmyamOn/CuuXogLzqXpZ1qbhJ3lDZfa4PZ3bO4sZ8u1Nxjhi4LdO8H2rLxsfUTj249MkoADMAAAKnpqretLosu5FsKbpb76p9TNdPKxquRjGedjCTIalS2fA6lbiZ6RwZIQe2ATAGLMDKTMLgR1nl2rxaXqSMSjfw8HcySAjkQ1ETtEVRFGuyFV4uTgpJySUnG6uk7pNrcnZ9xHpjDurRq04y5LnCcVLg5JpMpupGGxNOpV+OlH4dOnQUdrtBuUWn+HnP2ViW+ZEXdyI3UNWpXIIVrs9K6E6yWbeRq1lld7XmzUpz+LVt/DDN9LOjiY5FGvoGf+Ko/wC5T/Uj7GfGtBK2Ko/7tP8AUj7Kcu/mJQAGCAAAFN00/wB/NdK/Si5FJ0nLlVpv+Z+GXobaeVjUlE1MSsn1M3mQ143R0qh0dieVCL7O1ZPyOgiu6Placob4z8JJW8md1TsBMeNmKqGMpkHk2R8o8qzI4MonuepmCM0QZIhqsllI15u5RrVGaNdrM3K7scvFVCjWq1DX+PyYtiozm6WrcmmlvlKMV2vPwuKLFoKjaHKe2WZv19hHgFaEV0IkrbAjS0VNRxNJvYqlNv8AMj7KfDptqVz7ZhKvLhGf4oxl3pM5984pUoAOdAAAQ4yryISl+GLfcil8qL35+PcXXE0VOLi72atltOJX1df8M01wkvVextqyk5WOJKBrYhOx1q2gqy2QT+mVvVGjiNE4ndCp2NM3mWP1VO0dVqLFYioleEVQg3/PL4rjbsjO/ZxO5h6rd5Ps62b89C1aWCl8ROM54mM3dptQ5Hw4p27X/wAjSnGyUV1suN69SJ6UrJye7zFG8nfcR4l/LBbd5NUahAogqzu7E0FY18Kr5s2kBkjNGMTJkGE2YxQmxTKOfpN2RyKryOvpdc1nDUsiwQVCu6yVnGph1uc5O+7m8n/78Sx1Eb+k9TMTi8BQnh4Kc416tS14xlyHGELRcrLbTva/A853pBvYL5F1Izqol0Vq5jlCKlTmmlnnDzN9aq4uW1NddRf2sd+P1FVxUcz6rqjifiYSk+EeR18jm38Cs4f7PpN3qVUuiKcn3ysXPRej4YemqcL8lX2u7bebbMd2eOU6QrbABzoAAAAAAAA5mskL4eXXB/1opEFeTfDN+hfNORbw9S34W+7MoVTmw6WdOnh6jzCx5U3JkekKl5KKNmjzKd+Jp4SPKk5G43aFOyM2ZMxiQZpHkmZEcmQRVGSU9hA3mTwKNLSkeaytxZaMcroq8spMsHtsz7DqzRUMJRS/BF/m5z8z5BSV5I+06MhajTXCnBd0UYb74iVsgA5kAAAAAAAAAAAAAEGPjenNcYT8mfOsTnJR6j6Pivkl9MvI+c0Feo3wOjR/VjzSlSyUV0IzwVOyNXEc6p1HQpLI3UkewRiZkBsiqMkZBNlGC2mxA14GxECHErJlVxStJ9ZbKyKvpGNpMsGOG+ddaPtmD+7h9MfJHxDDvnLrR9vwf3cPpj5Iw3/xKmABzIAAAAAAAAAAAAANXSkrUaj/AJJ+TKFhlZSZfdKq9Gp9EvJlFtaDOjTxVjSornXOgjTwsczcN6rEXDPEQesgkyaRBMoU0TRIoksQMKhXdKx5xYpnD0vAsHLpPNH3DR0r0qb4wh+lHw2J9r0DO+Hov/Th5GG/iJW+ADmQAAAAAAAAAAAAAQY9fup/RPyZQ8RlFF9xfyT+mXkyh4v0OjT/AFYgwsTYZjh42RkzdWMmIo8MiDCbIWSSZEUZRJokMSaIGEzk6VjkdaZzdILJlFeR9j1SlfB0fpt3Nr0Pj1RWb6z63qRK+CpdHLX9cjHf6pXdAByoAAAAAAAAAAAAAIca/wB3P6ZeTKHWV2XfS07UZv8Alt35epSIvM6NPFWMkrHkmGzFs2V4eSkGzGRRhKSI0xNnkQJYoliRxJUBhI0casmb8zTxKyKK7iFn1pe3ofUdQZXwcOiU1/Vf1PmWLj4Nr19z6R9ncr4TqqTXhF+plv8AVKtAAORAAAAAAAAAAAAABytZalqNuMkvN+hUIss+tsrU4/X/AGv3Komzq0+r1EzMWzFs8NR7c8kemMwIJCK6TyQiUbEDNoigiVkGEzVxGw2JGriG7AcrE08pd/c/Zsvn2bS/w81/qN98I+xS5Ru79j6nk/MuH2cRahWT3On32lf0PG70SriADjQAAAAAAAAAAAAAV3XH5afXN9yXuVeKsrvsRZtbNsL7En1NtrLwK38S7u11HXq9Y9Th6g2ZcpPcwoI0HiZhVZI2ka1WvEDBvoM4Mh5a4ktNJ7yieLRImuIhBElokEFQ0MbJ2yOnOxzMUk9+Qg1IK8XnwL3qN93Uf4pRl3wXrcpisolt1AlenLqj4Sn6WPG71SrYADjQAAAAAAAAAAAAAeTimrNJrg80aVXRGHltpxX0839NjeBZbOBx56uUHs5ceqXumYy1ao/in3x9jtA9d+X0cGWq9L8c/D2MP2Qw72yqPtiv7Swgfpl9FfjqhhV+P8y9jNaq4fc598X/AGndA/TL6K/LVeG6o11xT8rEctV3/mr8v/ZZAP0y+irvVWX+Yvyv3MP2Mi/mrPsj7stYL+uf0cCjqlh1tc5dbSXgrnYweDp0o8inFQjtsuPFveTg83K3mgADyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/Z',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            RaisedButton(
                child: Text("Encontrar o mais barato"),
                color: Colors.green,
                padding: EdgeInsets.all(20),
                onPressed:()
                {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => infpolo()),
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
              'R\$ 255,00',
            ),
            Text(
              'jaqueta',
            ),
            Image.network(
              'data:image/jpeg;base64,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',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
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
                RaisedButton(
                    child: Text("Encontrar o mais barato"),
                    color: Colors.green,
                    padding: EdgeInsets.all(20),
                    onPressed:()
                    {Navigator.push(context, MaterialPageRoute(builder: (context) => estoucomsorte()),);
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
                RaisedButton(
                    child: Text("Encontrar o mais barato"),
                    color: Colors.green,
                    padding: EdgeInsets.all(20),
                    onPressed:()
                    {Navigator.push(context, MaterialPageRoute(builder: (context) => estoucomsorte()),);
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

