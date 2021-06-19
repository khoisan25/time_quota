import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../logic/IOdata.dart';
import '../../logic/session.dart';

class ShowSessions extends StatefulWidget{

  ShowSessions({Key? key}) : super(key: key);

  @override
  _ShowSessions createState() => _ShowSessions();

}


class _ShowSessions extends State<ShowSessions> {

  var sessionObjects = [];

  void loadSessions() {
    var inputData;

    IOdata().query().then((value) {
      inputData = value;

      for(int i = 0; i < inputData.length(); i++) {

        sessionObjects.add(new Session(inputData[i]['id'],
            inputData[i]['name'],
            inputData[i]['age']));

        print("$inputData[i]['id'] $inputData[i]['name'] $inputData[i]['age']");
      }
    }

    );
  }



    Widget build(BuildContext context) {
      return Container(
            child: Row(
              children:[
                for ( var i in sessionObjects ) Text(i.id.toString())
              ],
            ),
          );

    }
  }



