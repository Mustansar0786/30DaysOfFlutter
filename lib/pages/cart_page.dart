import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: "Cart".text.make(),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(),
        ),
        body: Column(
          children: [
            const _CartList().p32().expand(),
            const Divider(),
            const _CartTotal(),
          ],
        ),
        backgroundColor: context.canvasColor);
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl5.make(),
          25.widthBox,
          ElevatedButton(
            onPressed: () {},
            child: "Buy".text.make().centered(),
          ).wh(100, 32)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.done),
          trailing: IconButton(
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: () {},
          ),
          title: "item ${index + 1}".text.make().centered(),
        );
      },
    );
  }
}
