import 'package:flutter/material.dart';

class Tools extends StatelessWidget {
  const Tools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 150, 155),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 55),

              //Imagen
              Image.asset('assets/user2.png',
                width: 150,
                height: 150,),
              SizedBox(height: 20),

              //Text Anuncio
              Text('Información Personal', 
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20),

               //Container
              Container(
                width: 300,
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    //Text Nombre(s)
                    Padding(
                      padding: EdgeInsets.only(left: 30,top: 15),
                      child: Text('° Nombre(s):', 
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 5),

                    //Text Nombre Usuario
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('UsuarioPrueba', 
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    //Text Apellido(s)
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text('° Apellido(s):', 
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 5),

                    //Text Apellido  Usuario
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('UsuarioPrueba', 
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    //Text Correo(s)
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text('° Email:', 
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 5),

                    //Text Apellido  Usuario
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('usuario@prueba.com.mx', 
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    //Botones
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Boton Crear password
                        ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'modificar_usuario');
                        },
                        child: Text('Modificar'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203),), // Cambia el color de fondo a azul
                          ),
                        ),
                        SizedBox(width: 15),

                        //Boton para home
                        ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'home');
                        },
                        child: Text('Salir'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 203, 22, 22),), // Cambia el color de fondo a azul
                        ),
                      ),
                    ]
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}