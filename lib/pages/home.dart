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

    String bgImage = data?['isDayTime'] ? 'day.jpg' : 'night.jpg';
    Color header = data?['isDayTime'] ? Colors.lightBlueAccent : Colors.grey;

    return Scaffold(
      backgroundColor: header,
      body: SafeArea(child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 70, 0, 0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(data?['location'], style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey),),
              Text(data?['time'], style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,  color: Colors.grey),),

              SizedBox(height: 90),


              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 180, 0),
                child: Divider(height: 10, color: Colors.grey,),
              ),


              TextButton.icon(onPressed: (){
                Navigator.pushNamed(context, '/location');
              }, label: Text('Choose Location', style: TextStyle( color: Colors.grey),), icon: Icon(Icons.location_on,  color: Colors.grey),)
            ],
          ),
        ),
      )),
    );
  }
}
