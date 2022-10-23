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
                  Navigator.of(context).pushNamed(SettingsScreen.routeName);
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
        body: Consumer<IconProvider>(
          builder: (context, icon, child) {
            return GridView(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4
              ),
              children: [
                SoundButton(
                    icon.primary1, icon.secondary1, soundProvider.note1),
                SoundButton(
                    icon.primary2, icon.secondary2, soundProvider.note2),
                SoundButton(
                    icon.primary3, icon.secondary3, soundProvider.note3),
                SoundButton(
                    icon.primary4, icon.secondary4, soundProvider.note4),
                SoundButton(
                    icon.primary1, icon.secondary1, soundProvider.note5),
                SoundButton(
                    icon.primary2, icon.secondary2, soundProvider.note6),
                SoundButton(
                    icon.primary3, icon.secondary3, soundProvider.note7),
                SoundButton(
                    icon.primary4, icon.secondary4, soundProvider.note8),
                SoundButton(
                    icon.primary1, icon.secondary1, soundProvider.note9),
                SoundButton(
                    icon.primary2, icon.secondary2, soundProvider.note10),
                SoundButton(
                    icon.primary3, icon.secondary3, soundProvider.note11),
                SoundButton(
                    icon.primary4, icon.secondary4, soundProvider.note12),
                SoundButton(
                    icon.primary1, icon.secondary1, soundProvider.note13),
                SoundButton(
                    icon.primary2, icon.secondary2, soundProvider.note14),
                SoundButton(
                    icon.primary3, icon.secondary3, soundProvider.note15),
                SoundButton(
                    icon.primary4, icon.secondary4, soundProvider.note16),
                SoundButton(
                    icon.primary1, icon.secondary1, soundProvider.note17),
                SoundButton(
                    icon.primary2, icon.secondary2, soundProvider.note18),
                SoundButton(
                    icon.primary3, icon.secondary3, soundProvider.note19),
                SoundButton(
                    icon.primary4, icon.secondary4, soundProvider.note20),
                SoundButton(
                    icon.primary1, icon.secondary1, soundProvider.note21),
                SoundButton(
                    icon.primary2, icon.secondary2, soundProvider.note22),
                SoundButton(
                    icon.primary3, icon.secondary3, soundProvider.note23),
                SoundButton(
                    icon.primary4, icon.secondary4, soundProvider.note24),
                SoundButton(
                    icon.primary1, icon.secondary1, soundProvider.note25),
                SoundButton(
                    icon.primary2, icon.secondary2, soundProvider.note26),
                SoundButton(
                    icon.primary3, icon.secondary3, soundProvider.note27),
                SoundButton(
                    icon.primary4, icon.secondary4, soundProvider.note28),
              ],
            );
          }
        ),
      ),
    );
  }
}
