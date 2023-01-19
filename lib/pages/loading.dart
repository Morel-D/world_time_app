import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

  Uri url = Uri.parse("http://worldtimeapi.org/api/timezone/Africa/Douala");

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
    print(now);


  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading'),
    );
  }
}
