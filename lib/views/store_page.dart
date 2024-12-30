import 'package:flutter/material.dart';
import 'package:rest_api/service/product_service.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    getStore();
    return FutureBuilder(
      future: getStore(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return ListTile(
                leading:
                    Image.network(snapshot.data!.products[index].images[0]),
                title: Text(snapshot.data!.products[index].brand),
                subtitle: Text(snapshot.data!.products[index].description),
                trailing: Text(snapshot.data!.products[index].price.toString()),
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
