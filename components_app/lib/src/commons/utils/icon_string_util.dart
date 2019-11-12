import 'package:flutter/material.dart';

final _icons = <String, IconData> {
  'add_alert' : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open' : Icons.folder_open,
};

// Method that gets an icon with the icon name.
Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.blue,);
}