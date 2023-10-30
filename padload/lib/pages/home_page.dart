import 'package:flutter/material.dart';
import 'package:padload/pages/password.dart';
import 'package:padload/pages/registro_page.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 150, 155),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      
            //Imagen
            /*Image.network(
              'asset/logo.png',
              width: 200,
              height: 200,
            ),*/
            Image.asset('assets/logo.png',
            width: 200,
            height: 200,),
            SizedBox(height: 20),

            //Text Bienvenido
            Text('Bienvenido', 
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal
              ),
            ),
            SizedBox(height: 20),

            //Text Email
            Padding(
              padding: EdgeInsets.only(left:50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Email: ', 
                  style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.normal
                  ),
                ),
              )
            ),
            SizedBox(height: 5),

            //Email input
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'example@gmail.com',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white) //Color de borde cuando no esta enfocado
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white) //Color del borde cuando este enfocando
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20) //Ajustar la
                ),
                style: TextStyle(color: Colors.black), //Color texto dentro del TextField
              ),
            ),           
            SizedBox(height: 20),

            //Text Contrase;a
            Padding(
              padding: EdgeInsets.only(left:50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Contraseña: ', 
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.normal
                  ),
                ),
              )
            ),
            SizedBox(height: 5),

            //Contrase;a input
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '**********',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white) //Color de borde cuando no esta enfocado
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white) //Color del borde cuando este enfocando
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20) //Ajustar la altura del input
                ),
                style: TextStyle(color: Colors.black), //Color texto dentro del TextField
                obscureText: true, //Cambia las letras por puntos
              ),
            ),            
            SizedBox(height: 20),

            //Botones
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //Boton iniciar sesion
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'navbar');
                // Agregar lógica para iniciar sesión aquí
                  },
                  child: Text('Iniciar Sesión'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203),), // Cambia el color de fondo a azul
                  ),
                ),

                //Boton Registrarse
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'registro');//Navegar a la pantalla de incio
                  },
                  child: Text('Registrarse', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
