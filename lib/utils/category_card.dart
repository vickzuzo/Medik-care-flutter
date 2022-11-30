import "package:flutter/material.dart";

class CategoryCard extends StatelessWidget {
  final String iconImagePath;
  final String categoryName;

  const CategoryCard(
      {required this.iconImagePath, required this.categoryName, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(iconImagePath, height: 50),
            const SizedBox(width: 10),
            Text(categoryName, style: const TextStyle(fontSize: 17)),
          ],
        ),
      ),
    );
  }
}
