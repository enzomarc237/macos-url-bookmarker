import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macos_url_bookmarker/bloc/category_bloc.dart';
import 'package:macos_url_bookmarker/widgets/category_list.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search categories',
                  ),
                ),
                Expanded(
                  child: BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      if (state is CategoryLoadSuccess) {
                        return CategoryList(categories: state.categories);
                      }
                      return Center(child: CircularProgressIndicator());
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Show dialog to create category
                  },
                  child: Text('Create Category'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              // TODO: Show URLs for selected category
            ),
          ),
        ],
      ),
    );
  }
}