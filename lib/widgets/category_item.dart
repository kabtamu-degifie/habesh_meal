import 'package:flutter/material.dart';
import 'package:habesh_meal/screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem(this.title, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Way 1: Direct navigation
        // Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        //   return CategoryMealScreen(title);
        // }));

        // Way 2: static
        Navigator.of(context).pushNamed(CategoryMealScreen.routeName,
            arguments: {"title": title});
        // Way 3: Dyanic navigation
      },
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
