import 'package:flutter/material.dart';
import 'package:macos_url_bookmarker/models/category.dart';

class CategoryList extends StatelessWidget {
  final List<Category> categories;

  CategoryList({required this.categories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return ListTile(
          title: Text(category.name),
          onTap: () {
            // TODO: Navigate to URL screen for selected category
          },
        );
      },
    );
  }
}