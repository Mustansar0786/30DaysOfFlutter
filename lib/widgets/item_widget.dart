import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  final Item item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Card(
        shape: const StadiumBorder(),
        child: ListTile(
          onTap: () {},
          leading: CircleAvatar(radius: 30, child: Image.network(item.image)),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$" + item.price.toString(),
            style: const TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
