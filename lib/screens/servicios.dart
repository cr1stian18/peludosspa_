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
          borderRadius: BorderRadius.only(topRight:Radius.circular(13),
          topLeft: Radius.circular(13))
        ),
        
        child: const GNav(
          backgroundColor: Colors.blue,
          tabBackgroundColor: Colors.grey,
          color: Colors.white,
          activeColor: Colors.white,
          padding: EdgeInsets.all(16),
          tabs: [
          GButton(icon: Icons.home,
          text: 'Inicio',),
          GButton(icon: Icons.favorite,
          text: 'Favoritos',),
          GButton(icon: Icons.search,
          text: 'Buscar',),
          GButton(icon: Icons.settings,
          text: 'Ajustes',)
          ]),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              //app bar
             Row(
              children: const[
                Text('Servicios',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30 ),)
              ],
             ),
             //citas
              Container(
                width: 300,
                height: 150,
                child: Row(
                  children: [
                    
                    CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/citas.jpg'), 
                    ),
                    SizedBox(width: 20,),
                    TextButton(onPressed: (){}, 
                    child:Text('Citas Medicas',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),) )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              //accesorios
              Container(
                width: 300,
                height: 150,
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/Accesorios.jpg'), 
                    ),
                    SizedBox(width: 20,),
                    TextButton(onPressed: (){}, 
                    child:Text('Accesorios',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),) )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(height: 50,),
              //guarderia
              Container(
                width: 300,
                height: 150,
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: AssetImage('assets/guarderia.jpg'), 
                    ),
                    SizedBox(width: 20,),
                    TextButton(onPressed: (){}, 
                    child:Text('Guarderia',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),) )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}