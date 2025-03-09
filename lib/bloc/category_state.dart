part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoadSuccess extends CategoryState {
  final List<Category> categories;

  CategoryLoadSuccess(this.categories);

  @override
  List<Object> get props => [categories];
}