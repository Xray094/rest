import 'package:dio/dio.dart';
import 'package:rest_api/modules/car_module.dart';

Future<List<CarModule>> getAllCars() async {
  final dio = Dio();
  List<CarModule> newlist = [];
  try {
    var response =
        await dio.get('https://674f4447bb559617b26ea809.mockapi.io/car');
    List list = response.data;
    for (int i = 0; i < list.length; i++) {
      CarModule car = CarModule(
        id: list[i]['id'],
        color: list[i]['color'],
        model: list[i]['model'],
        name: list[i]['name'],
        image: list[i]['image'],
      );

      newlist.add(car);
    }
    return newlist;
  } catch (e) {
    print(e);
    return [
      CarModule(
          id: '-1',
          color: 'red',
          model: 'model',
          name: 'exception',
          image: 'https://loremflickr.com/640/480/abstract')
    ];
  }
}

void createCar() {
  final dio = Dio();
  dio.post(
    'https://674f4447bb559617b26ea809.mockapi.io/car',
    data: CarModule(
            id: '1',
            color: 'red',
            model: 'model',
            name: 'bmw',
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdfThvF_AiBSkjP-qj3K1lJpn-Z9WmPq8Vaw&')
        .toMap(),
  );
}

deleteCar(List<CarModule> list) async {
  final dio = Dio();
  String id = '6';
  bool flag = false;
  try {
    for (int i = 0; i < list.length; i++) {
      if (id == list[i].id) {
        await dio.delete(
          'https://674f4447bb559617b26ea809.mockapi.io/car/$id',
        );
        flag = true;
      }
    }
    if (!flag) {
      print('the object is not avaliable');
    }
  } catch (e) {
    print(e);
  }
}

updateCar() {
  final dio = Dio();
  try {
    dio.put(
      'https://674f4447bb559617b26ea809.mockapi.io/car/4',
      data: CarModule(
              id: '4',
              color: 'red',
              model: 'model',
              name: 'kia',
              image:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdfThvF_AiBSkjP-qj3K1lJpn-Z9WmPq8Vaw&')
          .toMap(),
    );
  } catch (e) {
    print(e);
  }
}
