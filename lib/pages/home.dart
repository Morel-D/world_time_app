import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Object? data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments;
    print(data);
    // print(data);

    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          TextButton.icon(onPressed: (){
            Navigator.pushNamed(context, '/location');
          }, label: Text('Choose Location'), icon: Icon(Icons.location_city),)
        ],
      )),
    );
  }
}
