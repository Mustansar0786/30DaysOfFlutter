import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/widgets.dart/drawer.dart';
import 'package:flutter_catalog/widgets.dart/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final dummyList = List.generate(4, (index) => CatalogModel.items[0]);

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(const Duration(seconds: 1));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final catalogDecodedData = jsonDecode(catalogJson);
    var productData = (catalogDecodedData["products"]);
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: (CatalogModel.items.isNotEmpty)
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: GridTile(
                    header: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        item.name,
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(color: Colors.deepPurple),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Image.network(item.image),
                    ),
                    footer: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "\$  " + item.price.toString(),
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.right,
                      ),
                      decoration: BoxDecoration(color: Colors.deepPurple),
                    ),
                  ),
                );
              })
          : const Center(child: CircularProgressIndicator()),
      drawer: const MyDrawer(),
    );
  }
}
