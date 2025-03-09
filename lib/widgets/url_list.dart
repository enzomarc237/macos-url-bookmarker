import 'package:flutter/material.dart';
import 'package:macos_url_bookmarker/models/url.dart';

class UrlList extends StatelessWidget {
  final List<Url> urls;

  UrlList({required this.urls});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: urls.length,
      itemBuilder: (context, index) {
        final url = urls[index];
        return ListTile(
          title: Text(url.url),
          onTap: () {
            // TODO: Open URL in browser
          },
        );
      },
    );
  }
}