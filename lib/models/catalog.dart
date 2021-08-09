class CatalogModel {
  static List<Item> products = [
    Item(
      999, 
      "Apple iPhone 12 Pro Max", 
      "Flagship iphone with 256GB storage", 
      1200, 
      "#343536",
      "https://www.mytrendyphone.eu/images/iPhone-12-Pro-Max-128GB-Graphite-0194252021200-25102020-1-p.jpg"
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);

  factory Item.formMap(Map<String, dynamic> map) {
    return Item(map['id'], map['name'], map['desc'], map['price'], map['color'], map['image']);
  }

  toMap() => {
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image
  };

}