import 'package:flutter/material.dart';
import 'package:padload/pages/password.dart';
import 'package:padload/pages/tabla_passwords.dart';
import 'package:padload/pages/tools.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}): super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const Password(),
      const TablaPasswords(),
      const Tools()
    ];
    return myList[index];
  }
}