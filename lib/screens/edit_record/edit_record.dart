import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Edit_record extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

          backgroundColor: Color(0xff111111),

          body: Container(
            margin: const EdgeInsets.fromLTRB(30, 150, 30, 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Color(0xff232323),
            ),

            child: Column(
              children: [

                Text('Entry X', style: TextStyle(color: Colors.white),),
                Divider(
                  color: Colors.white,
                ),

                SizedBox(
                  height: 500,
                ),

                Align(
                  alignment: Alignment.bottomRight,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Container(
                          height: 50,
                          width: 130,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text('  Delete  ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                          ),
                        ),

                      Container(
                        height: 50,
                        width: 130,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text('  Save  ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
        )
    );
  }
}