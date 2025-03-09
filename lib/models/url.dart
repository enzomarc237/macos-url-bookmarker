import 'package:equatable/equatable.dart';

class Url extends Equatable {
  final String id;
  final String url;
  final String categoryId;

  Url({required this.id, required this.url, required this.categoryId});

  @override
  List<Object> get props => [id, url, categoryId];
}