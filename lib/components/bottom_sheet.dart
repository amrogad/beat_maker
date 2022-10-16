import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/provider.dart';

class OpenBottomSheet extends StatelessWidget {
  const OpenBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      height: 106,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          color: Colors.black,
          border: Border.all(width: 3, color: Colors.lime)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.changeSounds(
                  'sounds/drums/kick1.wav',
                  'sounds/drums/kick2.wav',
                  'sounds/drums/kick3.wav',
                  'sounds/drums/kick4.wav',
                  'sounds/drums/clap1.wav',
                  'sounds/drums/clap2.wav',
                  'sounds/drums/clap3.wav',
                  'sounds/drums/clap4.wav',
                  'sounds/drums/snare1.wav',
                  'sounds/drums/snare2.wav',
                  'sounds/drums/snare3.wav',
                  'sounds/drums/snare4.wav',
                  'sounds/drums/hatclosed1.wav',
                  'sounds/drums/hatclosed2.wav',
                  'sounds/drums/hatclosed3.wav',
                  'sounds/drums/hatclosed4.wav',
                  'sounds/drums/hatopen1.wav',
                  'sounds/drums/hatopen2.wav',
                  'sounds/drums/hatopen3.wav',
                  'sounds/drums/hatopen4.wav',
                  'sounds/drums/tom1.wav',
                  'sounds/drums/tom2.wav',
                  'sounds/drums/tom3.wav',
                  'sounds/drums/tom4.wav',
                  'sounds/drums/rim1.wav',
                  'sounds/drums/rim2.wav',
                  'sounds/drums/rim3.wav',
                  'sounds/drums/rim4.wav',
                );
                Navigator.pop(context);
              },
              child: isSelected('Drums',
                  provider.note1 == 'sounds/drums/kick1.wav' ? true : false)),
          Container(
            width: double.infinity,
            height: 3,
            color: Colors.lime,
          ),
          SizedBox(
            height: 7,
          ),
          InkWell(
              onTap: () {
                provider.changeSounds(
                  'sounds/piano/key1.mp3',
                  'sounds/piano/key2.mp3',
                  'sounds/piano/key3.mp3',
                  'sounds/piano/key4.mp3',
                  'sounds/piano/key5.mp3',
                  'sounds/piano/key6.mp3',
                  'sounds/piano/key7.mp3',
                  'sounds/piano/key8.mp3',
                  'sounds/piano/key9.mp3',
                  'sounds/piano/key10.mp3',
                  'sounds/piano/key11.mp3',
                  'sounds/piano/key12.mp3',
                  'sounds/piano/key13.mp3',
                  'sounds/piano/key14.mp3',
                  'sounds/piano/key15.mp3',
                  'sounds/piano/key16.mp3',
                  'sounds/piano/key17.mp3',
                  'sounds/piano/key18.mp3',
                  'sounds/piano/key19.mp3',
                  'sounds/piano/key20.mp3',
                  'sounds/piano/key21.mp3',
                  'sounds/piano/key22.mp3',
                  'sounds/piano/key23.mp3',
                  'sounds/piano/key24.mp3',
                  'sounds/piano/key25.mp3',
                  'sounds/piano/key26.mp3',
                  'sounds/piano/key27.mp3',
                  'sounds/piano/key28.mp3',
                );
                Navigator.pop(context);
              },
              child: isSelected('Piano',
                  provider.note1 == 'sounds/piano/key1.mp3' ? true : false)),
        ],
      ),
    );
  }

  Widget isSelected(String text, bool selected) {
    if (selected) {
      return Padding(
        padding: EdgeInsets.all(6),
        child: Text(text,
            style: GoogleFonts.anton(color: Colors.lime, fontSize: 24)),
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(6),
        child: Text(text,
            style: GoogleFonts.anton(color: Colors.white, fontSize: 24)),
      );
    }
  }
}
