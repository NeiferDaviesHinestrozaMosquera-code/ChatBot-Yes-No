import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.tealAccent,
  Colors.greenAccent,
  Colors.yellowAccent,
  Colors.red,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int SelectedColor;

  AppTheme({this.SelectedColor = 0})
      : assert(SelectedColor >= 0 && SelectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length} ');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[SelectedColor]);
  }
}
