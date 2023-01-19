import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('Init state here we go');
  }

  @override
  Widget build(BuildContext context) {
    print('Build state here we go');
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Loaction'),
        backgroundColor: Colors.green[600],
        centerTitle: true,
        elevation: 0,
      ),
      body: TextButton.icon(onPressed: (){
        setState(() {
          counter++;
        });
      }, icon: Icon(Icons.tiktok), label: Text('Counter is $counter'))


    );
  }
}
