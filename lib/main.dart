import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(rainbowPianoApp());

class rainbowPianoApp extends StatelessWidget {

  void numPlay(int num){
    final player = AudioCache();

    player.play('note$num.wav');


  }

  Expanded playSound({ required Color color, required int soundNum}){

    return Expanded(
      child: FlatButton(
        color: color,

        onPressed: (){

          numPlay(soundNum);
        }, child: Text('.'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playSound(color: Colors.red, soundNum: 1),
              playSound(color: Colors.blue,soundNum: 2),
              playSound(color: Colors.pink,soundNum: 3),
              playSound(color: Colors.purple,soundNum: 4),
              playSound(color: Colors.lightGreen, soundNum:5),
              playSound(color: Colors.yellow,soundNum: 6),
              playSound(color: Colors.brown, soundNum:7),

            ],
          ),
        ),
      ),
    );
  }
}


