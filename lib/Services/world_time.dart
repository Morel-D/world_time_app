import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class worldTime {

  String location; // location of the user
  late String time; // time
  String path;
  String flag;

  worldTime({required this.location, required this.path, required this.flag });

  Future<void> getData() async {

    try {
      Uri url = Uri.parse('http://worldtimeapi.org/api/timezone/$path');

      Response response = await get(url);
      Map data = jsonDecode(response.body);
      //print(data);

      // Setting time
      String dataTime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      //print(dataTime);
      //print(offset);

      // creating dateTime object
      DateTime now = DateTime.parse(dataTime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set Time property

      time = DateFormat.jm().format(now);
      // now.toString();
    }catch(e)
    {
      time = "Could not fetch the data";
      print("Could not fetch the data $e");
    }


  }
}