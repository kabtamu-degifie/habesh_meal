import 'package:flutter/material.dart';
import 'package:habesh_meal/screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem(this.title, this.color, {super.key});

  void selectCategoryItem(BuildContext ctx) {
    Navigator.of(ctx)
        .push(MaterialPageRoute(builder: (_) => const CategoryMealScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategoryItem(context),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(title),
      ),
    );
  }
}
