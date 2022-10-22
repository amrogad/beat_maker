import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/icon_provider.dart';

class OpenIconBottomSheet extends StatelessWidget {
  const OpenIconBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconProvider = Provider.of<IconProvider>(context);
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
                iconProvider.changeIcons(
                  Colors.deepPurpleAccent,
                  Colors.deepPurple,
                  Colors.yellowAccent,
                  Colors.orangeAccent,
                  Colors.cyanAccent,
                  Colors.blue,
                  Colors.lime,
                  Colors.lightGreen,
                );
                Navigator.pop(context);
              },
              child: isSelected(
                  'Main Theme',
                  iconProvider.primary1 == Colors.deepPurpleAccent
                      ? true
                      : false)),
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
                iconProvider.changeIcons(
                  Colors.white70,
                  Colors.white,
                  Colors.pinkAccent,
                  Colors.pink,
                  Colors.tealAccent,
                  Colors.teal,
                  Colors.amberAccent,
                  Colors.redAccent,
                );
                Navigator.pop(context);
              },
              child: isSelected('Secondary Theme',
                  iconProvider.primary1 == Colors.white70 ? true : false)),
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
