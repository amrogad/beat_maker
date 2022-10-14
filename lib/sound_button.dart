import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SoundButton extends StatefulWidget {
  final Color mainColor;
  final Color sideColor;
  final note;

  const SoundButton(this.mainColor, this.sideColor, this.note, {Key? key})
      : super(key: key);

  @override
  State<SoundButton> createState() => _SoundButtonState();
}

class _SoundButtonState extends State<SoundButton> {
  late Color mainColor;
  late Color sideColor;
  final player = AudioPlayer();

  @override
  void initState() {
    mainColor = widget.mainColor;
    sideColor = widget.sideColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        setState(() {
          mainColor = Colors.redAccent;
          sideColor = Colors.red;
          player.play(AssetSource(widget.note));
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            gradient: RadialGradient(colors: [mainColor, sideColor]),
            boxShadow: const [
              BoxShadow(
                blurRadius: 1.0,
                spreadRadius: 1.0,
                offset: Offset(
                  1.0,
                  1.0,
                ),
              ),
            ]),
        curve: Curves.easeOutCubic,
        onEnd: () => Reset(),
        duration: const Duration(milliseconds: 100),
      ),
    );
  }

  void Reset() {
    setState(() {
      mainColor = widget.mainColor;
      sideColor = widget.sideColor;
    });
  }
}
