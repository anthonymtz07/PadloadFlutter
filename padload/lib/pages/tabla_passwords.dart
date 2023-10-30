import 'package:flutter/material.dart';
import 'package:padload/pages/modificar_password.dart';
import 'package:padload/pages/password.dart';
import 'package:padload/pages/registro_page.dart';
import 'package:padload/pages/navbar_menu.dart';

class TablaPasswords extends StatelessWidget {
  const TablaPasswords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 150, 150),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            //Titulo
            Text('Tus contraseñas: ',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),

            //Inicio de la tabla
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Table(
                border: TableBorder.all(),
                children: [
                 //Primera fila
                  TableRow(
                    children: [
                      
                      //Celda 1:
                      TableCell(
                        child:Container(
                          color: Colors.black,
                          height: 60,
                          child: Center(
                            child: Text('Aplicaciones',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                      ),

                      //Celda 2:
                      TableCell(
                        child:Container(
                          color: Colors.black,
                          height: 60,
                          child: Center(
                            child: Text('Contraseñas',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                      ),
                    ],
                  ),

                  //Segunda fila 
                  TableRow(
                    children: [

                      //Celda 1
                      TableCell(
                        child:Container(
                          color: Colors.white,
                          height: 40,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, 'modificar_password');//Navegar a la pantalla de modificacion
                              },
                              child: Text('Facebook', 
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        )
                      ),
                      
                      //Celda 2
                      TableCell(
                        child:Container(
                          color: Colors.white,
                          height: 40,
                          child: Center(
                            child: Text('dfuns7#2',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                      ),
                    ],
                  ),

                //Tercera fila 
                  TableRow(
                    children: [

                      //Celda 1
                      TableCell(
                        child:Container(
                          color: Colors.white,
                          height: 40,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, 'modificar_password');//Navegar a la pantalla de modificacion
                              },
                              child: Text('Instagram', 
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        )
                      ),
                      
                      //Celda 2
                      TableCell(
                        child:Container(
                          color: Colors.white,
                          height: 40,
                          child: Center(
                            child: Text('12kdrf@2',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            //Boton
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //Boton Crear password
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'password');
                // Agregar lógica para iniciar sesión aquí
                  },
                  child: Text('Crear nueva'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203),), // Cambia el color de fondo a azul
                  ),
                ),
                SizedBox(width: 15),

              //Boton para home
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'navbar');
                // Agregar lógica para iniciar sesión aquí
                  },
                  child: Text('Ok!'),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203),), // Cambia el color de fondo a azul
                  ),
                ),
              ]
            ),
          ],
        )
      ),
    );
  }
}


