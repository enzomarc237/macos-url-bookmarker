import 'package:system_tray/system_tray.dart';

void setupSystemTray() {
  final AppWindow appWindow = AppWindow();
  final SystemTray systemTray = SystemTray();

  systemTray.initSystemTray(
    title: 'URL Bookmarker',
    iconPath: 'assets/icon.png',
  );

  final Menu menu = Menu();
  menu.addSeparator();
  menu.addLabel('Open App', onClicked: (menuItem) {
    appWindow.show();
  });
  menu.addLabel('Import Tabs from Clipboard', onClicked: (menuItem) {
    // TODO: Import tabs from clipboard
  });
  menu.addLabel('Close', onClicked: (menuItem) {
    appWindow.close();
  });

  systemTray.setContextMenu(menu);
  systemTray.registerSystemTrayEventHandler((eventName) {
    if (eventName == kSystemTrayEventClick) {
      appWindow.show();
    }
  });
}