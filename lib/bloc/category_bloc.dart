import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:macos_url_bookmarker/models/category.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    on<LoadCategories>((event, emit) {
      // TODO: Load categories from storage
    });

    on<AddCategory>((event, emit) {
      // TODO: Add category to storage
    });

    on<DeleteCategory>((event, emit) {
      // TODO: Delete category from storage
    });
  }
}