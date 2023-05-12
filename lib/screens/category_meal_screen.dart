import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/meal-list';

  const CategoryMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(args['title']!),
      ),
      body: const Center(child: Text("The meals listed here...")),
    );
  }
}
