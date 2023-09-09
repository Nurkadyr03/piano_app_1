import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PianoWhiteButton extends StatelessWidget {
  String name;

  PianoWhiteButton({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.white),
          overlayColor: MaterialStateProperty.resolveWith((states) {
            return states.contains(MaterialState.pressed)
                ? Colors.black54
                : null;
          }),
        ),
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(UrlSource('assets/$name.mp3'));
        },
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              name,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PianoBlackButton extends StatelessWidget {
  String name;

  PianoBlackButton({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.black),
          overlayColor: MaterialStateProperty.resolveWith((states) {
            return states.contains(MaterialState.pressed)
                ? Colors.white30
                : null;
          }),
        ),
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(UrlSource('assets/$name.mp3'));
        },
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
