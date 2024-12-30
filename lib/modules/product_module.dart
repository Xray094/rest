import 'package:rest_api/modules/dimension_module.dart';
import 'package:rest_api/modules/meta_module.dart';
import 'package:rest_api/modules/review_module.dart';

class ProductModule {
  int id;
  String title;
  String description;
  String category;
  double price;
  double discountPercentage;
  double rating;
  int stock;
  List<dynamic> tags;
  String brand;
  String sku;
  int weight;
  DimensionModule dimensions;
  String warrantyInformation;
  String shippingInformation;
  List<ReviewModule> reviews;
  String returnPolicy;
  int minimumOrderQuantity;
  MetaModule meta;
  List<dynamic> images;
  String thumbnail;

  ProductModule({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  static fromMap(Map map) {
    return ProductModule(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      category: map['category'],
      price: map['price'] * 1.0,
      discountPercentage: map['discountPercentage'] * 1.0,
      rating: map['rating'] * 1.0,
      stock: map['stock'],
      tags: map['tags'],
      brand: map['brand'],
      sku: map['sku'],
      weight: map['weight'],
      dimensions: DimensionModule.fromMap(map['dimensions']),
      warrantyInformation: map['warrantyInformation'],
      shippingInformation: map['shippingInformation'],
      reviews: ReviewModule.fromlist(map['reviews']),
      returnPolicy: map['returnPolicy'],
      minimumOrderQuantity: map['minimumOrderQuantity'],
      meta: MetaModule.fromMap(map['meta']),
      images: map['images'],
      thumbnail: map['thumbnail'],
    );
  }

  static List<ProductModule> fromlist(list) {
    List<ProductModule> newlist = [];
    for (int i = 0; i < 15; i++) {
      if (i == 15 ||
          i == 16 ||
          i == 17 ||
          i == 18 ||
          i == 19 ||
          i == 20 ||
          i == 21 ||
          i == 22 ||
          i == 23) {
        continue;
      }
      newlist.add(ProductModule.fromMap(list[i]));
    }
    return newlist;
  }
}
