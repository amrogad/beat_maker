import 'package:flutter/material.dart';

class SoundProvider extends ChangeNotifier {
  String note1 = 'sounds/drums/kick1.wav';
  String note2 = 'sounds/drums/kick2.wav';
  String note3 = 'sounds/drums/kick3.wav';
  String note4 = 'sounds/drums/kick4.wav';
  String note5 = 'sounds/drums/clap1.wav';
  String note6 = 'sounds/drums/clap2.wav';
  String note7 = 'sounds/drums/clap3.wav';
  String note8 = 'sounds/drums/clap4.wav';
  String note9 = 'sounds/drums/snare1.wav';
  String note10 = 'sounds/drums/snare2.wav';
  String note11 = 'sounds/drums/snare3.wav';
  String note12 = 'sounds/drums/snare4.wav';
  String note13 = 'sounds/drums/hatclosed1.wav';
  String note14 = 'sounds/drums/hatclosed2.wav';
  String note15 = 'sounds/drums/hatclosed3.wav';
  String note16 = 'sounds/drums/hatclosed4.wav';
  String note17 = 'sounds/drums/hatopen1.wav';
  String note18 = 'sounds/drums/hatopen2.wav';
  String note19 = 'sounds/drums/hatopen3.wav';
  String note20 = 'sounds/drums/hatopen4.wav';
  String note21 = 'sounds/drums/tom1.wav';
  String note22 = 'sounds/drums/tom2.wav';
  String note23 = 'sounds/drums/tom3.wav';
  String note24 = 'sounds/drums/tom4.wav';
  String note25 = 'sounds/drums/rim1.wav';
  String note26 = 'sounds/drums/rim2.wav';
  String note27 = 'sounds/drums/rim3.wav';
  String note28 = 'sounds/drums/rim4.wav';

  void changeSounds(
      String note1Path,
      String note2Path,
      String note3Path,
      String note4Path,
      String note5Path,
      String note6Path,
      String note7Path,
      String note8Path,
      String note9Path,
      String note10Path,
      String note11Path,
      String note12Path,
      String note13Path,
      String note14Path,
      String note15Path,
      String note16Path,
      String note17Path,
      String note18Path,
      String note19Path,
      String note20Path,
      String note21Path,
      String note22Path,
      String note23Path,
      String note24Path,
      String note25Path,
      String note26Path,
      String note27Path,
      String note28Path) {
    note1 = note1Path;
    note2 = note2Path;
    note3 = note3Path;
    note4 = note4Path;
    note5 = note5Path;
    note6 = note6Path;
    note7 = note7Path;
    note8 = note8Path;
    note9 = note9Path;
    note10 = note10Path;
    note11 = note11Path;
    note12 = note12Path;
    note13 = note13Path;
    note14 = note14Path;
    note15 = note15Path;
    note16 = note16Path;
    note17 = note17Path;
    note18 = note18Path;
    note19 = note19Path;
    note20 = note20Path;
    note21 = note21Path;
    note22 = note22Path;
    note23 = note23Path;
    note24 = note24Path;
    note25 = note25Path;
    note26 = note26Path;
    note27 = note27Path;
    note28 = note28Path;
    notifyListeners();
  }
}
