import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(FlutterDrummer());
}

void playDrumSound(int drumNumber) {
  final player = AudioCache();
  player.play('drum$drumNumber.wav');
}

Expanded buildKey({Color color, int drumNumber}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        playDrumSound(drumNumber);
      },
    color: color,
    ),
  );
}

class FlutterDrummer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               Expanded(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: <Widget>[
                     buildKey(color: Colors.red, drumNumber: 1),
                     buildKey(color: Colors.green, drumNumber: 2)
                   ],
                 ),
               ),
               Expanded(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: <Widget>[
                     buildKey(color: Colors.blue, drumNumber: 3),
                     buildKey(color: Colors.orange, drumNumber: 4)
                   ],
                 ),
               ),
               Expanded(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: <Widget>[
                     buildKey(color: Colors.yellow, drumNumber: 5),
                     buildKey(color: Colors.white, drumNumber: 6)
                   ],
                 ),
               ),
             ],
           ),
        ),
      ),
    );
  }
}