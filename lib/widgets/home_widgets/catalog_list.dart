import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalogItem = CatalogModel.getByPosition(
            index); //alternative of CatalogModel.item[index]
        return InkWell(
          overlayColor: MaterialStateProperty.all(Vx.white),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catalog: catalogItem, //CatalogModel.getById(2)
              ),
            ),
          ),
          child: CatalogItem(catalogItem: catalogItem),
        );
      },
    );
  }
}
