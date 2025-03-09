import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macos_url_bookmarker/app.dart';
import 'package:macos_url_bookmarker/bloc/category_bloc.dart';
import 'package:macos_url_bookmarker/bloc/settings_bloc.dart';
import 'package:macos_url_bookmarker/bloc/url_bloc.dart';
import 'package:macos_url_bookmarker/system_tray.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupSystemTray();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CategoryBloc()),
        BlocProvider(create: (context) => SettingsBloc()),
        BlocProvider(create: (context) => UrlBloc()),
      ],
      child: MyApp(),
    ),
  );
}