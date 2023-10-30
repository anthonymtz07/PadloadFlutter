import 'package:flutter/material.dart';
import 'package:padload/pages/guardar.dart';
//import 'package:padload/widget/navbar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:padload/widget/navbar.dart';
import 'package:padload/widget/pageRoutes.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 150, 155),
      body: SingleChildScrollView(
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                SizedBox(height: 170,),

                //Text Creamos tu contraseña
                Text('Creamos tu contraseña',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                //Text #
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('# de digitos:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),

                //Password input
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: '6 a 12',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder (
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 20),

                //Boton Generar Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){

                      },
                      child: Text('Generar password'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203),)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                //Text Contrase;a lista
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Contraseña lista:',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ),
                SizedBox(height: 5,),
                
                //Recuadro: 
                Container(
                  width: 280, // Ancho del recuadro
                  height: 50, // Alto del recuadro
                  color: Colors.white, // Fondo blanco
                  child: Center(
                    child: Text(
                      'Esperando ...',
                      style: TextStyle(
                        color: Colors.black, // Color de las letras
                        fontSize: 16, // Tamaño de fuente
                        fontWeight: FontWeight.bold, // Estilo de fuente
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 20),

                //Boton Generar Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, 'guardar');
                        //Navigator.push(
                          //context, MaterialPageRoute(builder: (context)=> Guardar()));
                      },
                      child: Text('Guardar datos'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203),)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
      //bottomNavigationBar: NavigationPage(),
      //body:Routes(index: 1)
    );
  }
}


