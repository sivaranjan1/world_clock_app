import 'package:flutter/material.dart';
import 'package:world_time_clock/pages/choose_location.dart';
import 'package:world_time_clock/pages/homepage.dart';
import 'package:world_time_clock/pages/loading.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => loading(),
        '/home': (context) => home(),
        '/choose_location': (context) => location(),
      },
    ));
