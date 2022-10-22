import 'package:flutter/material.dart';

class IconProvider extends ChangeNotifier {
  Color primary1 = Colors.deepPurpleAccent;
  Color secondary1 = Colors.deepPurple;
  Color primary2 = Colors.yellowAccent;
  Color secondary2 = Colors.orangeAccent;
  Color primary3 = Colors.cyanAccent;
  Color secondary3 = Colors.blue;
  Color primary4 = Colors.lime;
  Color secondary4 = Colors.lightGreen;


  void changeIcons(
    Color primaryPath1,
    Color secondaryPath1,
    Color primaryPath2,
    Color secondaryPath2,
    Color primaryPath3,
    Color secondaryPath3,
    Color primaryPath4,
    Color secondaryPath4,
  ) {
    primary1 = primaryPath1;
    secondary1 = secondaryPath1;
    primary2 = primaryPath2;
    secondary2 = secondaryPath2;
    primary3 = primaryPath3;
    secondary3 = secondaryPath3;
    primary4 = primaryPath4;
    secondary4 = secondaryPath4;
    notifyListeners();
  }
}
