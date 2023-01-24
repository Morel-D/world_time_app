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
    worldTime(path: 'Africa/Cario', location: 'Cario', flag: 'Cario.png'),
    worldTime(path: 'Africa/Nairobi', location: 'Nairobi', flag: 'Nairobi.png'),
    worldTime(path: 'America/Chicago', location: 'Chicago', flag: 'chicago.png'),
    worldTime(path: 'America/New_York', location: 'New_York', flag: 'New_York.png'),
    worldTime(path: 'Asia/Seoul', location: 'Seoul', flag: 'Seoul.png'),
    worldTime(path: 'Asia/Jarkatar', location: 'Jarkatar', flag: 'Jarkatar.png'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Loaction'),
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
                    print(locations[index].location);
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
