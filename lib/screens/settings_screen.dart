import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/components/sound_sheet.dart';
import 'package:untitled/providers/icon_provider.dart';
import 'package:untitled/providers/sound_provider.dart';

import '../components/icon_sheet.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Settings Screen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var soundProvider = Provider.of<SoundProvider>(context);
    var iconProvider = Provider.of<IconProvider>(context);
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Soundpack:',
                    style: GoogleFonts.anton(color: Colors.lime, fontSize: 36),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      BottomSoundSheet();
                    },
                    child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 3, color: Colors.lime)),
                        child: Text(
                            soundProvider.note1 == 'sounds/drums/kick1.wav'
                                ? 'Drums'
                                : 'Piano',
                            style: GoogleFonts.anton(
                                color: Colors.lime, fontSize: 24))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Theme:',
                    style: GoogleFonts.anton(color: Colors.lime, fontSize: 36),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      BottomIconSheet();
                    },
                    child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 3, color: Colors.lime)),
                        child: Text(
                            iconProvider.primary1 == Colors.deepPurpleAccent
                                ? 'Main Theme'
                                : 'Secondary Theme',
                            style: GoogleFonts.anton(
                                color: Colors.lime, fontSize: 24))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void BottomSoundSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return OpenSoundBottomSheet();
        });
  }

  void BottomIconSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return OpenIconBottomSheet();
        });
  }
}
