import 'package:flutter/material.dart';

const Color _customColor = Color( 0xFF49149F );

const List<Color> _colorThemes = [
  _customColor,
  Color.fromARGB(255, 7, 49, 83),
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppThem {
  final int selectedColor;

  AppThem({
    this.selectedColor = 0
    }): assert(
      selectedColor >=0 && selectedColor <= _colorThemes.length, 
      'Colors must be between 0 and ${ _colorThemes.length}'
    );
  
  ThemeData theme (){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[ selectedColor ],
      // brightness: Brightness.dark
    );

  }
}