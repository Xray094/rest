import 'package:flutter/material.dart';
import 'package:rest_api/modules/car_module.dart';
import 'package:rest_api/service/car_service.dart';

class CarPage extends StatefulWidget {
  const CarPage({super.key});

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAllCars(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<CarModule> cars = snapshot.data!;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        //create
                        createCar();
                        setState(() {});
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: const Center(
                          child: Text(
                            'Create',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //delete
                        deleteCar(cars);
                        setState(() {});
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: const Center(
                          child: Text(
                            'Delete',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        //update
                        updateCar();
                        setState(() {});
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: const Center(
                          child: Text(
                            'Update',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 750,
                width: 1000,
                child: ListView.builder(
                  itemCount: cars.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: Image.network(cars[index].image),
                        title: Text(cars[index].name),
                        subtitle: Text(cars[index].model),
                        trailing: Text(
                          cars[index].color,
                        ));
                  },
                ),
              )
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
