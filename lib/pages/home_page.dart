// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/widgets.dart/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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
      backgroundColor: MyThemes.creamColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
            if (CatalogModel.items.isNotEmpty)
              CatalogList().expand()
            else
              Center(
                child: CircularProgressIndicator(),
              )
          ],
        ),
      ),
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalogItem = CatalogModel.items[index];
        return CatalogItem(catalogItem: catalogItem);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalogItem;
  const CatalogItem({Key? key, required this.catalogItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalogItem.name.text
                  .color(MyThemes.darkBluishColor)
                  .xl
                  .bold
                  .make(),
              catalogItem.desc.text.make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                // buttonPadding: Vx.mOnly(right: 16),
                children: [
                  "\$${catalogItem.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              MyThemes.darkBluishColor),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "Buy".text.make())
                ],
              ).pOnly(right: 8),
            ],
          )),
        ],
      ),
    ).white.rounded.square(150).make().p12();
  }
}

class CatalogImage extends StatelessWidget {
  const CatalogImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Icon(
        Icons.home,
        color: Colors.green,
        size: 100,
      ),
    ).rounded.p8.color(MyThemes.creamColor).make().p16().w40(context);
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.color(MyThemes.darkBluishColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
