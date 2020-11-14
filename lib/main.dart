import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void play(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    play(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    play(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    play(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    play(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.pink,
                  onPressed: () {
                    play(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.cyan,
                  onPressed: () {
                    play(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.amber,
                  onPressed: () {
                    play(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
