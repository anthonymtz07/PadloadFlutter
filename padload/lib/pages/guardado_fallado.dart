import 'package:flutter/material.dart';
import 'package:padload/pages/password.dart';
import 'package:padload/pages/registro_page.dart';
import 'package:padload/pages/tabla_passwords.dart';

class GuardadoFallado extends StatelessWidget {
  const GuardadoFallado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 150, 150),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //Imagen
            Image.asset('assets/cancelar.png',
              width: 150,
              height: 150,),
            SizedBox(height: 20,),

            //Text Operacion fallada
            Text('Operación fallada',
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
                child: Text('Upps.. Ocurrió algo, revisa tu conexión para identificar el error',
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
                    Navigator.pushReplacementNamed(context, 'navbar');
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