import 'package:flutter/material.dart';
import 'package:tut/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Catalog App"),
      ),
      body: Text("Hello"),
      drawer: MyDrawer(),
    );
  }
}