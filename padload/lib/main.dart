import 'package:flutter/material.dart';
import 'package:padload/pages/guardado_exitoso.dart';
import 'package:padload/pages/guardado_fallado.dart';
import 'package:padload/pages/guardar.dart';
import 'package:padload/pages/home_page.dart';
import 'package:padload/pages/modificar_password.dart';
import 'package:padload/pages/modificar_usuario.dart';
import 'package:padload/pages/navbar_menu.dart';
import 'package:padload/pages/registro_page.dart';
import 'package:padload/pages/password.dart';
import 'package:padload/pages/tabla_passwords.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      
      //Rutas
      initialRoute: 'home',
      routes: {
        'navbar' : (context) => PageNavar(),
        'home' :(context) => LoginPage(),
        'registro' :(context) => RegistroPage(),
        'password' : (context) => Password(),
        'guardar' : (context) => Guardar(),
        'exito_password' : (context) => GuardadoExitoso(),
        'falla_password' : (context) =>  GuardadoFallado(),
        'tabla_passwords' : (context) => TablaPasswords(),
        'modificar_password' : (context) => ModificarPassword(),
        'modificar_usuario' : (context) => ModificarUsuario()
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.teal
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
          elevation: 0
        )
      ),
    );
  }
}

