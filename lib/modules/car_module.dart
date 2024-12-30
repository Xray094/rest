class CarModule {
  String id;
  String color;
  String model;
  String name;
  String image;

  CarModule({
    required this.id,
    required this.color,
    required this.model,
    required this.name,
    required this.image,
  });

  static CarModule fromMap(Map<String, dynamic> map) {
    return CarModule(
      id: map['id'],
      color: map['color'],
      model: map['model'],
      name: map['name'],
      image: map['image'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'color': color,
      'model': model,
      'name': name,
      'image': image,
    };
  }
}
