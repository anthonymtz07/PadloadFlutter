import 'package:flutter/material.dart';
import 'package:padload/widget/navbar.dart';
import 'package:padload/widget/pageRoutes.dart';

class PageNavar extends StatefulWidget {
  const PageNavar({super.key});

  @override
  State<PageNavar> createState() => _PageNavarState();
}

class _PageNavarState extends State<PageNavar> {
  int index = 0;
  Navbar? myNavar;
  @override
  
  void initState() {
    myNavar = Navbar(currentIndex: (i){
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myNavar,
      body: Routes(index: index),
    );
  }
}