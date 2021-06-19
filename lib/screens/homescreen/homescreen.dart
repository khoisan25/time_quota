import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../logic/IOdata.dart';
import 'showSessions.dart';

class Homescreen extends StatelessWidget {
  // This widget is the root of your application.

  final sessionData = new IOdata();

  @override
  Widget build(BuildContext context) {
    double spc = 170;    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(


            appBar: new AppBar(
              backgroundColor: Color(0xff111111),
              shadowColor: Colors.black,
              title: Column(

                children: <Widget>[
                  Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Dashboard',
                  style: GoogleFonts.lato(
                  fontSize: 30.0,
                  color: Colors.white,
                  letterSpacing: 2.0,

                  ),
                    textAlign: TextAlign.left,
                  ),
                  ),

                  Divider(
                    color: Colors.white,
                    thickness: 0.5,
                  )
                ]

                ),

              ),

            backgroundColor: Color(0xff111111),
            floatingActionButton: FloatingActionButton.extended(
              elevation: 4.0,
              icon: const Icon(Icons.add),
              label: const Text('Activities'),
              backgroundColor: Color(0xff696969),
              onPressed: () {

                print('insert button pressed');
                sessionData.insert("matt", 10);
              },
            ),

            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


            bottomNavigationBar: BottomAppBar(
              color: Color(0xff343434),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    color: Color(0xffced4da),
                    onPressed: () {
                      print('delete button pressed');
                      sessionData.delete(1);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Color(0xffced4da),
                    onPressed: () {
                      print('query button pressed');
                      sessionData.query();
                    },
                  )
                ],
              ),
            ),


            body: ListView(
              padding: EdgeInsets.all(20),
            children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xff232323),
                      //comntainer outline
                    ),

                    height: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.0,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              //color: Color(0xff29bf12),
                              ),
                            //width: 170,

                            child: CircularPercentIndicator(
                                radius: 160.0,
                                lineWidth: 20.0,
                                backgroundColor: Color(0xff323232),
                                percent: 0.1,
                                center: new Text("10%", style: TextStyle(color: Colors.white),),
                                progressColor: Color(0xfff21b3f),


                            ),
                          ),
                        ),

                        AspectRatio(
                          aspectRatio: 1.0,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(5, 10, 10, 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              //color: Color(0xfff21b3f),
                            ),
                            //width: 170,

                            child: CircularPercentIndicator(
                              radius: 160.0,
                              lineWidth: 20.0,
                              backgroundColor: Color(0xff323232),
                              percent: 0.7,
                              center: new Text("70%", style: TextStyle(color: Colors.white),),
                              progressColor: Color(0xff29bf12),



                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xff232323),
                    ),
                    height: 190,
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      padding: EdgeInsets.all(10.0),

                      children: <Widget>[

                        //1
                        Material(

                          color: Color(0xffffca3a),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),

                          child: Ink(

                            child: InkWell(

                                onTap: (){

                                },
                                splashColor: Colors.white30,
                                borderRadius: BorderRadius.all(Radius.circular(10.0),),

                                child: Container(

                                  child: Icon(

                                    Icons.add,
                                    size: 25,
                                    color: Colors.white,

                                  ),
                                ),
                            ),
                          ),


                          ),

                        //2
                        Material(

                          color: Color(0xff8ac926),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),

                          child: Ink(

                            child: InkWell(

                              onTap: (){},
                              splashColor: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),

                              child: Container(

                                child: Icon(

                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          ),


                        ),


                        //3
                        Material(

                          color: Color(0xff1982c4),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),

                          child: Ink(

                            child: InkWell(

                              onTap: (){},
                              splashColor: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),

                              child: Container(

                                child: Icon(

                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          ),


                        ),

                        //4
                        Material(

                          color: Color(0xff6a4c93),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),

                          child: Ink(

                            child: InkWell(

                              onTap: (){},
                              splashColor: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),

                              child: Container(

                                child: Icon(

                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          ),


                        ),

                        //5

                        Material(

                          color: Color(0xff264653),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),

                          child: Ink(

                            child: InkWell(

                              onTap: (){},
                              splashColor: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),

                              child: Container(

                                child: Icon(

                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          ),


                        ),

                        //6
                        Material(

                          color: Color(0xffe76f51),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),

                          child: Ink(

                            child: InkWell(

                              onTap: (){},
                              splashColor: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),

                              child: Container(

                                child: Icon(

                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          ),
                        ),

                        //7
                        Material(

                          color: Color(0xff9e0059),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),

                          child: Ink(

                            child: InkWell(

                              onTap: (){},
                              splashColor: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),

                              child: Container(

                                child: Icon(

                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          ),
                        ),

                        //8
                        Material(

                          color: Color(0xffef476f),
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),

                          child: Ink(

                            child: InkWell(

                              onTap: (){},
                              splashColor: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10.0),),

                              child: Container(

                                child: Icon(

                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          ),
                        ),


                      ],

                    ),











                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xff232323),
                    ),
                    height: 260,
                    child: const Center(

                        child: Text('No entries',
                          style: TextStyle(color: Colors.white),
                        ),

                    ),
                  ),




                ]
            )

        )
    );
  }
}
