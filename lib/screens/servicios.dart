import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Picture extends StatefulWidget {
  const Picture({super.key});

  @override
  State<Picture> createState() => _PictureState();
}

class _PictureState extends State<Picture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //navBar
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: const GNav(
            backgroundColor: Colors.blue,
            tabBackgroundColor: Colors.grey,
            color: Colors.white,
            activeColor: Colors.white,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Inicio',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favoritos',
              ),
              GButton(
                icon: Icons.search,
                text: 'Buscar',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Ajustes',
              )
            ]),
      ),
      body: SafeArea(
          child: (Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/ee.png")),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 50),
          children: <Widget>[
            //app bar
            Row(
              children: const [
                Text(
                  'Servicios',
                  style: TextStyle(
                    fontFamily: 'rukik',
                    fontSize: 45.00,
                    color: Color.fromARGB(255, 234, 236, 238),
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 220)),
            //citas
            DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(.0),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 164, 53, 255),
                    Color.fromARGB(255, 20, 213, 247)
                  ])),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.transparent),
                child: Text('J'),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 164, 53, 255),
                Color.fromARGB(255, 20, 213, 247)
              ])),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.transparent),
                child: Text('J'),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
