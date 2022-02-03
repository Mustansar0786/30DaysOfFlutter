class Item {
  final String id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

class CatalogModel {
  static final items = [
    Item("1", "iphone", "made by apple", 999, "red",
        "assets/images/Mustansar.png")
  ];
}
