import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

 const IconData music_note = IconData(0xe415, fontFamily: 'MaterialIcons');
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
               Icon(music_note),
              playSound(color: Colors.purple, soundNum: 1),
              playSound(color: Colors.green,soundNum: 2),
              playSound(color: Colors.pink,soundNum: 3),
              playSound(color: Colors.lightBlueAccent,soundNum: 4),
              playSound(color: Colors.deepOrange, soundNum:5),
              playSound(color: Colors.grey,soundNum: 6),
              playSound(color: Colors.brown, soundNum:7),

            ],
          ),
        ),
      ),
    );
  }
}


