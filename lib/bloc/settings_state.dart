part of 'settings_bloc.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

class SettingsInitial extends SettingsState {}

class SettingsLoadSuccess extends SettingsState {
  final Settings settings;

  SettingsLoadSuccess(this.settings);

  @override
  List<Object> get props => [settings];
}