import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map? data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map?;
    print(data);
    // print(data);

    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(data?['location'], style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Text(data?['time'], style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),

            SizedBox(height: 400),


            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 180, 0),
              child: Divider(height: 10),
            ),


            TextButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/location');
            }, label: Text('Choose Location', style: TextStyle(color: Colors.black),), icon: Icon(Icons.location_on, color: Colors.black,),)
          ],
        ),
      )),
    );
  }
}
