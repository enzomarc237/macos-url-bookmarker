part of 'url_bloc.dart';

abstract class UrlEvent extends Equatable {
  const UrlEvent();

  @override
  List<Object> get props => [];
}

class LoadUrls extends UrlEvent {
  final String categoryId;

  LoadUrls(this.categoryId);

  @override
  List<Object> get props => [categoryId];
}

class AddUrl extends UrlEvent {
  final Url url;

  AddUrl(this.url);

  @override
  List<Object> get props => [url];
}

class DeleteUrl extends UrlEvent {
  final String urlId;

  DeleteUrl(this.urlId);

  @override
  List<Object> get props => [urlId];
}