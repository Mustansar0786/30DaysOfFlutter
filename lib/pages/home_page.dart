import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/widgets.dart/drawer.dart';
import 'package:flutter_catalog/widgets.dart/item_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dummyList = List.generate(4, (index) => CatalogModel.items[0]);

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final catalogDecodedData = jsonDecode(catalogJson);
    var productData = (catalogDecodedData["products"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          }),
      drawer: const MyDrawer(),
    );
  }
}
