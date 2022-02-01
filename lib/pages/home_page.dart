import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets.dart/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int day = 30;
  final String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: Center(
        child: Text("Welcome to $day days of flutter by $name"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
