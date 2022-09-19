import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class WorldTime {
  dynamic Location;
  dynamic Time;
  dynamic FLag;
  dynamic Url;
  bool? isdate;

  WorldTime({this.Url, this.Location, this.FLag});

  Future<void> getdata() async {
    dynamic response =
        await http.get(Uri.parse('https://worldtimeapi.org/api/timezone/$Url'));
    Map data = jsonDecode(response.body);
    //print(data);
    String datetime = (data['datetime']);
    String offset = data['utc_offset'].substring(1, 3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    Time = DateFormat.jm().format(DateTime.now()).toString();
    isdate = (now.hour > 6 && now.hour < 18) ? true : false;
  }
}
