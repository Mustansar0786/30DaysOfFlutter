import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalogItem;
  const CatalogItem({Key? key, required this.catalogItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          const CatalogImage(),
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
                          shape:
                              MaterialStateProperty.all(const StadiumBorder())),
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
