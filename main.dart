
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(LiriosApp());
}

class LiriosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PoemaVictoria(),
    );
  }
}

class PoemaVictoria extends StatefulWidget {
  @override
  _PoemaVictoriaState createState() => _PoemaVictoriaState();
}

class _PoemaVictoriaState extends State<PoemaVictoria> {
  final AudioPlayer _player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _player.play(AssetSource('audio/fondo.mp3'));
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/lirio.png', height: 200),
              SizedBox(height: 20),
              Text(
                'Lirios virtuales para Victoria, con cariño de Enrique 🌸\n\n'
                'Como lirio que florece suave bajo el cielo azul,\n'
                'así es tu luz, Victoria, brillante y sin igual.\n'
                'Que este regalo digital te abrace con ternura,\n'
                'y cada pétalo te susurre dulzura.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
