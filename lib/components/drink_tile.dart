import 'package:flutter/material.dart';
import 'package:practice/models/drink.dart';

// ignore: must_be_immutable
class DrinkTile extends StatelessWidget {
  final Drink drink;
  void Function()? onTap;
  final Widget trailings;
  DrinkTile({
    super.key,
    required this.drink,
    required this.onTap,
    required this.trailings,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.brown[100], borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          title: Text(drink.name),
          subtitle: Text(drink.price),
          leading: Image.asset(drink.imagePath),
          trailing: trailings,
        ),
      ),
    );
  }
}
