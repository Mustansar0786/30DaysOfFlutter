//first we make a class to create a user define variable "Item" whose values is mention below
class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;
  //default constructor
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  //named constructor
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}

// CONCEPTS ABOUT THIS PAGE: than we make a actual class where we will use Item userdefine variable ;
// here we will create a list of Item type so we can store values and their data. this list was created because we have to use it latar in listview.builder
class CatalogModel {
  static List<Item> items = [
    // Item(
    //     id: 1,
    //     name: "iphone",
    //     desc: "made by apple",
    //     price: 999,
    //     color: "red",
    //     image: "assets/images/Mustansar.png")
  ];
}
