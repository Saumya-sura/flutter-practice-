// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  // const ItemWidget({super.key});
  final  Item item;

  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${item.name}pressed");
        },
          leading: Image.network(item.Image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}"),
      ),
    );
  }
}