import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/provider.dart';
import 'package:untitled/screens/settings_screen.dart';
import 'package:untitled/components/sound_button.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsScreen()));
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
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, provider.note1),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, provider.note2),
            SoundButton(Colors.cyanAccent, Colors.blue, provider.note3),
            SoundButton(Colors.lime, Colors.lightGreen, provider.note4),
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, provider.note5),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, provider.note6),
            SoundButton(Colors.cyanAccent, Colors.blue, provider.note7),
            SoundButton(Colors.lime, Colors.lightGreen, provider.note8),
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, provider.note9),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, provider.note10),
            SoundButton(Colors.cyanAccent, Colors.blue, provider.note11),
            SoundButton(Colors.lime, Colors.lightGreen, provider.note12),
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, provider.note13),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, provider.note14),
            SoundButton(Colors.cyanAccent, Colors.blue, provider.note15),
            SoundButton(Colors.lime, Colors.lightGreen, provider.note16),
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, provider.note17),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, provider.note18),
            SoundButton(Colors.cyanAccent, Colors.blue, provider.note19),
            SoundButton(Colors.lime, Colors.lightGreen, provider.note20),
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, provider.note21),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, provider.note22),
            SoundButton(Colors.cyanAccent, Colors.blue, provider.note23),
            SoundButton(Colors.lime, Colors.lightGreen, provider.note24),
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, provider.note25),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, provider.note26),
            SoundButton(Colors.cyanAccent, Colors.blue, provider.note27),
            SoundButton(Colors.lime, Colors.lightGreen, provider.note28),
          ],
        ),
      ),
    );
  }
}
