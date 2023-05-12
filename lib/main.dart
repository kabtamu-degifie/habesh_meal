import 'package:flutter/material.dart';
import 'package:habesh_meal/screens/category_meal_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habesha Meal',
      home: const CategoriesScreen(),
      routes: {CategoryMealScreen.routeName: (_) => CategoryMealScreen()},
    );
  }
}
