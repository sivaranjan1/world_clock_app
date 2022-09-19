import 'package:flutter/material.dart';
import 'package:world_time_clock/services/worldtime.dart';
import 'package:world_time_clock/services/worldtime.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class loading extends StatefulWidget {
  loading({Key? key}) : super(key: key);

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  void getworldtime() async {
    WorldTime s1 = WorldTime(
        Url: 'Europe/London', Location: 'Berlin', FLag: 'germany.png');
    await s1.getdata();
    Navigator.pushReplacementNamed((context), '/home', arguments: {
      'location': s1.Location,
      'flag': s1.FLag,
      'time': s1.Time,
      'isdate': s1.isdate
    });
  }

  @override
  void initState() {
    super.initState();
    getworldtime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: LoadingAnimationWidget.waveDots(
          color: Colors.white,
          // leftDotColor: Color.fromARGB(255, 234, 163, 32),
          // rightDotColor: Color.fromARGB(255, 30, 243, 140),
          size: 150,
        ),
      ),
    );
  }
}
