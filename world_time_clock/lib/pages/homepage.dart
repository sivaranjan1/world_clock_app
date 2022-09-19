import 'package:flutter/material.dart';
import 'package:world_time_clock/services/worldtime.dart';
import 'loading.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    dynamic check = data['isdate'] ? 'morning.png' : 'night.png';
    return Scaffold(
        // backgroundColor: Color.fromRGBO(82, 113, 255, 0.90),
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            data['location'],
            style: TextStyle(fontSize: 30),
          )),
          SizedBox(
            height: 40,
          ),
          Text(
            data['time'],
            style: TextStyle(fontSize: 60),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton.icon(
            onPressed: (() {
              Navigator.pushNamed(context, '/choose_location');
            }),
            icon: Icon(Icons.location_on),
            label: Text("choose location"),
          ),
          SizedBox(
            height: 40,
          ),
          Image.asset('assets/$check', height: 270),
        ],
      ),
    ));
  }
}
