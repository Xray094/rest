import 'package:rest_api/modules/product_module.dart';

class StoreModule {
  List<ProductModule> products;
  int total;
  int skip;
  int limit;

  StoreModule({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  static StoreModule fromMap(Map<String, dynamic> map) {
    return StoreModule(
      products: ProductModule.fromlist(map['products']),
      total: map['total'],
      skip: map['skip'],
      limit: map['limit'],
    );
  }
}
