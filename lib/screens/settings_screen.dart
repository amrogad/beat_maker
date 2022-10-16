import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/components/bottom_sheet.dart';
import 'package:untitled/providers/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Settings Screen';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Soundpack:',
                style:
                    GoogleFonts.anton(color: Colors.lime, fontSize: 36),
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () {
                  SoundsBottomSheet();
                },
                child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 3, color: Colors.lime)),
                    child: Text(provider.note1=='sounds/drums/kick1.wav'?'Drums' : 'Piano',
                        style: GoogleFonts.anton(
                            color: Colors.lime, fontSize: 24))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void SoundsBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return OpenBottomSheet();
        });
  }
}
