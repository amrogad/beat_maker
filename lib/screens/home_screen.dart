import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/screens/settings_screen.dart';
import 'package:untitled/components/sound_button.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Beat Maker',
            style: GoogleFonts.kanit(color: Colors.white),
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
                  color: Colors.white,
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: GridView(
          physics: const ClampingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          children: const [
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, 'sounds/kick1.wav'),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, 'sounds/kick2.wav'),
            SoundButton(Colors.cyanAccent, Colors.blue, 'sounds/kick3.wav'),
            SoundButton(Colors.lime, Colors.lightGreen, 'sounds/kick4.wav'),
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, 'sounds/clap1.wav'),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, 'sounds/clap2.wav'),
            SoundButton(Colors.cyanAccent, Colors.blue, 'sounds/clap3.wav'),
            SoundButton(Colors.lime, Colors.lightGreen, 'sounds/clap4.wav'),
            SoundButton(Colors.deepPurpleAccent, Colors.deepPurple,
                'sounds/snare1.wav'),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, 'sounds/snare2.wav'),
            SoundButton(Colors.cyanAccent, Colors.blue, 'sounds/snare3.wav'),
            SoundButton(Colors.lime, Colors.lightGreen, 'sounds/snare4.wav'),
            SoundButton(Colors.deepPurpleAccent, Colors.deepPurple,
                'sounds/hatclosed1.wav'),
            SoundButton(Colors.yellowAccent, Colors.orangeAccent,
                'sounds/hatclosed2.wav'),
            SoundButton(
                Colors.cyanAccent, Colors.blue, 'sounds/hatclosed3.wav'),
            SoundButton(
                Colors.lime, Colors.lightGreen, 'sounds/hatclosed4.wav'),
            SoundButton(Colors.deepPurpleAccent, Colors.deepPurple,
                'sounds/hatopen1.wav'),
            SoundButton(Colors.yellowAccent, Colors.orangeAccent,
                'sounds/hatopen2.wav'),
            SoundButton(Colors.cyanAccent, Colors.blue, 'sounds/hatopen3.wav'),
            SoundButton(Colors.lime, Colors.lightGreen, 'sounds/hatopen4.wav'),
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, 'sounds/tom1.wav'),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, 'sounds/tom2.wav'),
            SoundButton(Colors.cyanAccent, Colors.blue, 'sounds/tom3.wav'),
            SoundButton(Colors.lime, Colors.lightGreen, 'sounds/tom4.wav'),
            SoundButton(
                Colors.deepPurpleAccent, Colors.deepPurple, 'sounds/rim1.wav'),
            SoundButton(
                Colors.yellowAccent, Colors.orangeAccent, 'sounds/rim2.wav'),
            SoundButton(Colors.cyanAccent, Colors.blue, 'sounds/rim3.wav'),
            SoundButton(Colors.lime, Colors.lightGreen, 'sounds/rim4.wav'),
          ],
        ),
      ),
    );
  }
}
