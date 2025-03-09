import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:macos_url_bookmarker/models/url.dart';

part 'url_event.dart';
part 'url_state.dart';

class UrlBloc extends Bloc<UrlEvent, UrlState> {
  UrlBloc() : super(UrlInitial()) {
    on<LoadUrls>((event, emit) {
      // TODO: Load URLs from storage
    });

    on<AddUrl>((event, emit) {
      // TODO: Add URL to storage
    });

    on<DeleteUrl>((event, emit) {
      // TODO: Delete URL from storage
    });
  }
}