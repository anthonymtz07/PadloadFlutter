import 'package:flutter/material.dart';
import 'package:padload/pages/password.dart';
import 'package:padload/pages/tabla_passwords.dart';
import 'package:padload/pages/tools.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar extends StatefulWidget {
  final Function currentIndex;
  const Navbar({Key? key, required this.currentIndex}) :super(key: key);//

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
      return BottomNavigationBar(
        currentIndex: index, //Llamamos a llamar a nuestro index
        onTap: (int i){
          setState(() {
            index = i; //Nuestro index toma el valor de i
            widget.currentIndex(i);
          });
        },

      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      iconSize: 23,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      
      //Crear una lista
      items: const[
        
        //Incio
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),

        //Historial
        BottomNavigationBarItem(
          icon: Icon(Icons.table_chart),
          label: 'Passwords'
        ),
        
        //Configuraciones
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Tools'
        ),
      ]
    );
  }
}