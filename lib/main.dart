import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void numPlay(int num){
    final player = AudioCache();

    player.play('note$num.wav');


  }

