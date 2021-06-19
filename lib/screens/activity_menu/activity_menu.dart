import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../logic/IOdata.dart';



class Activity_menu extends StatelessWidget {

  final sessionData = new IOdata();

  Map<String, dynamic> sessionPipeline = {'zero': 0, 'one': 1, 'two': 2};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff111111),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green,
                    Color(0xff111111),
                  ]
                ),

              ),

              ),
            FloatingActionButton.extended(
                onPressed: (){
                  print(sessionPipeline);
                },
                label: Text('   Start   '),
                backgroundColor: Colors.green,
                icon: Icon(Icons.play_arrow_rounded),
                splashColor: Colors.greenAccent,



                ),

            SizedBox(height: 10,),

            SizedBox(

              height: 20,
              width: 80,
              child: FloatingActionButton.extended(
              onPressed: (){},
              label: Text('Chains',
              style: TextStyle(fontSize: 10),),
              backgroundColor: Color(0xff696969),
              splashColor: Colors.greenAccent,

              ),




            ),

            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xff232323),
              ),
              height: 400,
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
                        child: Icon(Icons.add_rounded)),




                  ),
                  ),

                  
                  Center(
                    child: Text("No entries...",
                    style: TextStyle(
                        color: Colors.white
                    ),
                    )
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}