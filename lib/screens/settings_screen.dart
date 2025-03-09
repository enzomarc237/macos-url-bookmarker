import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macos_url_bookmarker/bloc/settings_bloc.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          if (state is SettingsLoadSuccess) {
            return ListView(
              children: [
                ListTile(
                  title: Text('Theme'),
                  trailing: DropdownButton<String>(
                    value: state.settings.theme,
                    onChanged: (value) {
                      // TODO: Update theme
                    },
                    items: ['Light', 'Dark']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                ListTile(
                  title: Text('Data Folder'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // TODO: Show folder picker
                    },
                    child: Text('Select Folder'),
                  ),
                ),
                ListTile(
                  title: Text('Clear All'),
                  trailing: Switch(
                    value: state.settings.clearAll,
                    onChanged: (value) {
                      // TODO: Update clear all setting
                    },
                  ),
                ),
                ListTile(
                  title: Text('Browser Extensions Setup'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // TODO: Show browser extensions setup
                    },
                    child: Text('Setup'),
                  ),
                ),
              ],
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}