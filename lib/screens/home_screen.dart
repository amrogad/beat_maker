import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/icon_provider.dart';
import 'package:untitled/providers/sound_provider.dart';
import 'package:untitled/screens/settings_screen.dart';
import 'package:untitled/components/sound_button.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    var soundProvider = Provider.of<SoundProvider>(context);
    var iconProvider = Provider.of<IconProvider>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Text(
            'Beat Maker',
            style: GoogleFonts.anton(color: Colors.lime, fontSize: 24),
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SettingsScreen()));
                },
                child: Icon(
                  Icons.settings,
                  color: Colors.lime,
                  size: 24,
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: GridView(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          children: [
            SoundButton(iconProvider.primary1, iconProvider.secondary1,
                soundProvider.note1),
            SoundButton(iconProvider.primary2, iconProvider.secondary2,
                soundProvider.note2),
            SoundButton(iconProvider.primary3, iconProvider.secondary3,
                soundProvider.note3),
            SoundButton(iconProvider.primary4, iconProvider.secondary4,
                soundProvider.note4),
            SoundButton(iconProvider.primary1, iconProvider.secondary1,
                soundProvider.note5),
            SoundButton(iconProvider.primary2, iconProvider.secondary2,
                soundProvider.note6),
            SoundButton(iconProvider.primary3, iconProvider.secondary3,
                soundProvider.note7),
            SoundButton(iconProvider.primary4, iconProvider.secondary4,
                soundProvider.note8),
            SoundButton(iconProvider.primary1, iconProvider.secondary1,
                soundProvider.note9),
            SoundButton(iconProvider.primary2, iconProvider.secondary2,
                soundProvider.note10),
            SoundButton(iconProvider.primary3, iconProvider.secondary3,
                soundProvider.note11),
            SoundButton(iconProvider.primary4, iconProvider.secondary4,
                soundProvider.note12),
            SoundButton(iconProvider.primary1, iconProvider.secondary1,
                soundProvider.note13),
            SoundButton(iconProvider.primary2, iconProvider.secondary2,
                soundProvider.note14),
            SoundButton(iconProvider.primary3, iconProvider.secondary3,
                soundProvider.note15),
            SoundButton(iconProvider.primary4, iconProvider.secondary4,
                soundProvider.note16),
            SoundButton(iconProvider.primary1, iconProvider.secondary1,
                soundProvider.note17),
            SoundButton(iconProvider.primary2, iconProvider.secondary2,
                soundProvider.note18),
            SoundButton(iconProvider.primary3, iconProvider.secondary3,
                soundProvider.note19),
            SoundButton(iconProvider.primary4, iconProvider.secondary4,
                soundProvider.note20),
            SoundButton(iconProvider.primary1, iconProvider.secondary1,
                soundProvider.note21),
            SoundButton(iconProvider.primary2, iconProvider.secondary2,
                soundProvider.note22),
            SoundButton(iconProvider.primary3, iconProvider.secondary3,
                soundProvider.note23),
            SoundButton(iconProvider.primary4, iconProvider.secondary4,
                soundProvider.note24),
            SoundButton(iconProvider.primary1, iconProvider.secondary1,
                soundProvider.note25),
            SoundButton(iconProvider.primary2, iconProvider.secondary2,
                soundProvider.note26),
            SoundButton(iconProvider.primary3, iconProvider.secondary3,
                soundProvider.note27),
            SoundButton(iconProvider.primary4, iconProvider.secondary4,
                soundProvider.note28),
          ],
        ),
      ),
    );
  }
}
