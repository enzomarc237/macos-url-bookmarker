part of 'url_bloc.dart';

abstract class UrlState extends Equatable {
  const UrlState();

  @override
  List<Object> get props => [];
}

class UrlInitial extends UrlState {}

class UrlLoadSuccess extends UrlState {
  final List<Url> urls;

  UrlLoadSuccess(this.urls);

  @override
  List<Object> get props => [urls];
}