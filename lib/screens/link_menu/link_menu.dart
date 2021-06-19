import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Link_menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Color(0xff111111),

        body: Container(
          margin: const EdgeInsets.fromLTRB(20, 180, 20, 60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Color(0xff232323),
          ),

          child: Column(

              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.green,
                      splashColor: Colors.greenAccent,
                      child: Icon(Icons.add_rounded),
                    ),
                  ),
                ),

                Center(
                  child: Text('No entries'),
                ),


              ]
          ),
        ),
      ),
    );
  }
}