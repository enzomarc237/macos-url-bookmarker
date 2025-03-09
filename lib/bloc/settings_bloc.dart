import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:macos_url_bookmarker/models/settings.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitial()) {
    on<LoadSettings>((event, emit) {
      // TODO: Load settings from storage
    });

    on<UpdateSettings>((event, emit) {
      // TODO: Update settings in storage
    });
  }
}