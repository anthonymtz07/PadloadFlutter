import 'package:flutter/material.dart';
import 'package:padload/pages/password.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

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
              Image.asset('assets/logo.png',
                width: 200,
                height: 200,),
              SizedBox(height: 20),

              //Text Registrate
              Text('Registrate', 
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
                    hintText: 'Escribe algo...',
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
                    hintText: 'Escribe algo...',
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
                    hintText: 'example@gmail.com',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //Boton Guardar
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Password()));
                    // Agregar lógica para iniciar sesión aquí
                    },
                    child: Text('Guardar'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203),), // Cambia el color de fondo a azul
                    ),
                  ),
                  
                  //Boton Facebook
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistroPage())); //Api Facebook
                    },
                    child: Container(
                      color: Colors.white, // Color de fondo blanco
                      padding: EdgeInsets.all(8), // Espaciado dentro del contenedor
                      child: Row(
                        children: [
                          Icon(
                            Icons.facebook, color: Colors.blue,
                          ),
                          SizedBox(width: 8,),
                          Text('Facebook', style: TextStyle(color: Colors.black),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height:45),
            ],
          ),
        ),
      ),
    );
  }
}