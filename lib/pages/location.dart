import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  void getData() async {
    // simulate network
    String name = await Future.delayed(Duration(seconds: 3), () {
       return "Denzel";
    });

    String bio = await Future.delayed(Duration(seconds: 2), (){
      return 'Development x Designing';
    });

    print('$name - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Loaction'),
        backgroundColor: Colors.green[600],
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
