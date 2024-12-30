import 'package:dio/dio.dart';
import 'package:rest_api/modules/store_module.dart';

Future<StoreModule> getStore() async {
  final dio = Dio();
  try {
    var response = await dio.get('https://dummyjson.com/products');
    Map<String, dynamic> map = response.data;
    return StoreModule.fromMap(map);
  } catch (e) {
    print(e);

    return StoreModule(products: [], total: -1, skip: -1, limit: -1);
  }
}
