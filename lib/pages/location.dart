import 'package:flutter/material.dart';
import 'package:world_time/Services/world_time.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List locations = [
    worldTime(path: 'Europe/London', location: 'London', flag: 'london.png'),
    worldTime(path: 'Africa/Douala', location: 'Yaounde', flag: 'Cario.png'),
    worldTime(path: 'Africa/Nairobi', location: 'Nairobi', flag: 'Nairobi.png'),
    worldTime(path: 'America/Chicago', location: 'Chicago', flag: 'chicago.png'),
    worldTime(path: 'America/New_York', location: 'New_York', flag: 'New_York.png'),
    worldTime(path: 'Asia/Seoul', location: 'Seoul', flag: 'Seoul.png'),
    worldTime(path: 'Asia/Jakarta', location: 'Jakarta', flag: 'Jarkatar.png'),
  ];

  void updateTime(index) async
  {
    worldTime instance = locations[index];
    await instance.getData();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
              child: Card(
                child: ListTile(
                  onTap: (){
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                ),
              ),
            );
          }
      ),
    );
  }
}
