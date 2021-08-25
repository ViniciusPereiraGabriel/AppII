import 'package:flutter/material.dart';
import 'package:projetofinal1/brinquedos.dart';
import 'package:projetofinal1/calcados.dart';
import 'package:projetofinal1/estoucomsorte.dart';
import 'package:projetofinal1/infpolo.dart';
import 'package:projetofinal1/login.dart';

class roupas extends StatefulWidget {
  const roupas({Key? key}) : super(key: key);

  @override
  _roupasState createState() => _roupasState();
}

class _roupasState extends State<roupas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Text(
              'Roupas'
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

    //colocar botão
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
    ],
    ),
    ),
    ),
    ),
    );
  }
}
