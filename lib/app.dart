import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:macos_url_bookmarker/screens/category_screen.dart';
import 'package:macos_url_bookmarker/screens/settings_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MacosApp(
      title: 'URL Bookmarker',
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
      home: MacosWindow(
        titleBar: TitleBar(
          title: const Text('URL Bookmarker'),
          toolbar: ToolBar(
            items: [
              ToolBarIconButton(
                label: 'Add URL',
                icon: const MacosIcon(MacosIcons.add),
                onPressed: () {
                  // TODO: Show dialog to add URL
                },
              ),
              ToolBarIconButton(
                label: 'Export List',
                icon: const MacosIcon(MacosIcons.export),
                onPressed: () {
                  // TODO: Export list
                },
              ),
              ToolBarIconButton(
                label: 'Import',
                icon: const MacosIcon(MacosIcons.import),
                onPressed: () {
                  // TODO: Import list
                },
              ),
              ToolBarIconButton(
                label: 'Settings',
                icon: const MacosIcon(MacosIcons.settings),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
              ),
            ],
          ),
        ),
        child: CategoryScreen(),
      ),
    );
  }
}