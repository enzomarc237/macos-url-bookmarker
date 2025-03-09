import 'package:equatable/equatable.dart';

class Settings extends Equatable {
  final String theme;
  final String dataFolder;
  final bool clearAll;

  Settings({required this.theme, required this.dataFolder, required this.clearAll});

  @override
  List<Object> get props => [theme, dataFolder, clearAll];
}