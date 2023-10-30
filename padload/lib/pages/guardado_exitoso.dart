import 'package:flutter/material.dart';
import 'package:padload/pages/password.dart';
import 'package:padload/pages/registro_page.dart';
import 'package:padload/pages/tabla_passwords.dart';

class GuardadoExitoso extends StatelessWidget {
  const GuardadoExitoso({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 150, 150),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //Imagen
            Image.asset('assets/cheque.png',
              width: 150,
              height: 150,),
            SizedBox(height: 20,),

            //Text Operacion exitosa
            Text('Operación éxitosa',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),

            //Text Guadado correcto
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Align(
                alignment: Alignment.center,
                child: Text('¡Tu contraseña se ha guadardo correctamente!',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              )
            ),
            SizedBox(height: 20,),

            //Boton ver
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'tabla_passwords');
                  },
                  child: Text('Ver'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 22, 22, 203))
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}