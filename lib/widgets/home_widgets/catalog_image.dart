import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  const CatalogImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: const Icon(
        Icons.home,
        color: Colors.green,
        size: 100,
      ),
    ).rounded.p8.color(MyThemes.creamColor).make().p16().w40(context);
  }
}
