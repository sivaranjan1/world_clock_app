import 'package:flutter/material.dart';

class location extends StatefulWidget {
  location({Key? key}) : super(key: key);

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("location"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text("locaion")),
    );
  }
}
