import 'package:flutter/material.dart';


class ListViewScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => ListViewScreenState();
  
  
  }
  



class ListViewScreenState extends State<ListViewScreen>{


  Map person = {
    "name": 'Reza Jakesh',
    "age":21
  };

  Map person2 = {
    "name": 'Mahdi',
    "age":21
  };

  Map person3 = {
    "name": 'Mobina',
    "age":20
  };

  Map person4 = {
    "name": 'Sogol',
    "age":23
  };

  Map person5 = {
    "name": 'alireza DoolSanjabi',
    "age":22
  };

  List perosns = [];

  _savePerson() {

    perosns.add(person);
    perosns.add(person2);
    perosns.add(person3);
    perosns.add(person4);
    perosns.add(person5);
    perosns.add(person4);
    perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);
    perosns.add(person);
    perosns.add(person);
    perosns.add(person);
    perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);
    perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);perosns.add(person);
    print(perosns[0]['name']);
    perosns.add(person5); perosns.add(person5); perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);perosns.add(person5);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _savePerson();
  }
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: new Container(

        child: ListView.builder(
          itemCount: perosns.length,
          itemBuilder: (BuildContext context , int index) {

            return Container(
              child: new Row(
                children: [
                  new Text('hello my name is              '),
                  new Text(perosns[index]['name'], style: TextStyle(backgroundColor: Colors.red),),
                  new Text('          and i have       ${perosns[index]['age']}} years old.')
                ],
              ),
            );
          },
        ),
      )
    );
  }
}