import 'package:flutter/material.dart';
import 'package:padload/pages/password.dart';

class ModificarUsuario extends StatelessWidget {
  const ModificarUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 150, 155),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:45),

              //Imagen
              Image.asset('assets/user2.png',
                width: 150,
                height: 150,),
              SizedBox(height: 20),

              //Text Registrate
              Text('Modifica tu informacion', 
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal
                ),
              ),
              SizedBox(height: 20),

              //Text Nombre(s)
              Padding(
                padding: EdgeInsets.only(left:50),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nombre(s): ', 
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),

              //Nombre input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Usuario Prueba',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white) //Color de borde cuando no esta enfocado
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white) //Color del borde cuando este enfocando
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20) //Ajustar el contenido
                  ),
                  style: TextStyle(color: Colors.black), //Color texto dentro del TextField
                ),
              ),           
              SizedBox(height: 20),

              //Text Apellido(s)
              Padding(
                padding: EdgeInsets.only(left:50),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Apellido(s): ', 
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.normal
                    ),
                  )
                ),
              ),
              SizedBox(height: 5),

              //Apellidos input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'UsuarioPrueba',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white) //Color de borde cuando no esta enfocado
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white) //Color del borde cuando no este enfocando
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20) //Ajustar el contenido
                  ),
                  style: TextStyle(color: Colors.black), //Color texto dentro del TextField
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
                  )
                ),
              ),
              SizedBox(height: 5),

              //Nombre input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'usuario@prueba.com.mx',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white) //Color de borde cuando no esta enfocado
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white) //Color del borde cuando este enfocando
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), //Ajustar el contenido
                  ),
                  style: TextStyle(color: Colors.black), //Color texto dentro del TextField
                ),
              ),           
              SizedBox(height: 20),

              //Text Constrase;a
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
                  )
                ),
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
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20) //Ajustar contenido
                  ),
                  style: TextStyle(color: Colors.black), //Color texto dentro del TextField
                  obscureText: true, //Cambia las letras por puntos
                ),
              ),
              
              //Botones
              SizedBox(height: 20),
                    //Botones
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Boton Crear password
                        ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'home');
                        },
                        child: Text('Guardar'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203),), // Cambia el color de fondo a azul
                          ),
                        ),
                        SizedBox(width: 15),

                        //Boton para home
                        ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'navbar');
                        },
                        child: Text('Cancelar'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 203, 22, 22),), // Cambia el color de fondo a azul
                        ),
                      ),
                    ]
                  ),
              SizedBox(height:45),
            ],
          ),
        ),
      ),
    );
  }
}