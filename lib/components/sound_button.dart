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
  late Color _mainColor;
  late Color _sideColor;
  final player = AudioPlayer();

  @override
  void initState() {
    _mainColor = widget.mainColor;
    _sideColor = widget.sideColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _mainColor = Colors.redAccent;
          _sideColor = Colors.red;
          player.play(AssetSource(widget.note));
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            gradient: RadialGradient(colors: [_mainColor, _sideColor]),
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
      _mainColor = widget.mainColor;
      _sideColor = widget.sideColor;
    });
  }
}
