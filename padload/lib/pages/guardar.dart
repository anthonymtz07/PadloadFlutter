import 'package:flutter/material.dart';
import 'package:padload/pages/guardado_exitoso.dart';
import 'package:padload/pages/guardado_fallado.dart';

class Guardar extends StatelessWidget {
  const Guardar({super.key});

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

                //Text Paso final
                Text('Paso final',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                //Text Aplicacion
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Aplicacion a utilizar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),

                //Aplicacion Input
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'facebook(example)',
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

                //Text Contrase;a generada
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Contraseña generada:',
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

                //Boton Guardar Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, 'exito_password');
                      },
                      child: Text('Guardar'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203),)
                      ),
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