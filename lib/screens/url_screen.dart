import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macos_url_bookmarker/bloc/url_bloc.dart';
import 'package:macos_url_bookmarker/widgets/url_list.dart';

class UrlScreen extends StatelessWidget {
  final String categoryId;

  UrlScreen({required this.categoryId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URLs'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search URLs',
            ),
          ),
          Expanded(
            child: BlocBuilder<UrlBloc, UrlState>(
              builder: (context, state) {
                if (state is UrlLoadSuccess) {
                  return UrlList(urls: state.urls);
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }
}