class Property {
  final int id;
  final String name;
  final String description;
  final int price;
  final String image;
  const Property(
      {this.id, this.name, this.description, this.price, this.image});
  Property.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        description = json['description'],
        price = json['price'],
        image = json['image'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'price': price,
        'image': image,
      };
}
