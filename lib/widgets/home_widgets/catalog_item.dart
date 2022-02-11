import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
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
                  .color(context.theme.highlightColor)
                  .xl
                  .bold
                  .make(),
              catalogItem.desc.text.color(context.theme.hintColor).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                // buttonPadding: Vx.mOnly(right: 16),
                children: [
                  "\$${catalogItem.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(const StadiumBorder())),
                      child: "Add to cart".text.make())
                ],
              ).pOnly(right: 8),
            ],
          )),
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().p12();
  }
}
