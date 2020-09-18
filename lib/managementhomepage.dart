import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'sidebar/sidebar_layout.dart';

//void main() => runApp(MyApp());

class managementhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.9999,
            decoration: BoxDecoration(
                color: Color(0xffc44c4f)
            ),
          ),

          // GridView.count(crossAxisCount: 2,
          // children:<Widget>[


          Padding(padding: EdgeInsets.only(left: 25, right: 25, top: 120),
            child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),

                child: Material(


                    elevation: 30.0,

                    child: Container(

                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 25, left: 10), child:
                          Text("Management Options", style: TextStyle(fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffc44c4f)),),),

                          Padding(padding: EdgeInsets.only(top: 80),
                            child: GridView.count(crossAxisCount: 2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 10,
                              children: <Widget>[

                                //    Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 70,bottom: 10),child: Text("Hello,I'nnnm"),),
                                Padding(padding: EdgeInsets.only(left: 10),
                                  child: singleCard(
                                      Text("Add Student", style: TextStyle(
                                          color: Color(0xffc44c4f),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      )
                                  ),),
                                Padding(padding: EdgeInsets.only(right: 10),
                                  child: singleCard(
                                      Text("Add Teacher", style: TextStyle(
                                          color: Color(0xffc44c4f),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      )
                                  ),),

                                Padding(padding: EdgeInsets.only(left: 10),
                                  child: singleCard(
                                      Text("Edit Student Profile",
                                        style: TextStyle(
                                            color: Color(0xffc44c4f),
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      )
                                  ),),
                                Padding(padding: EdgeInsets.only(right: 10),
                                  child: singleCard(
                                      Text("Delete Student", style: TextStyle(
                                          color: Color(0xffc44c4f),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      )
                                  ),),

                                Padding(padding: EdgeInsets.only(left: 10),
                                  child: singleCard(
                                      Text("Diagnostic Lab", style: TextStyle(
                                          color: Color(0xffc44c4f),
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      )
                                  ),),

                                Padding(padding: EdgeInsets.only(right: 10),
                                  child: singleCard(
                                      Text("Alternative Care", style: TextStyle(
                                          color: Color(0xffc44c4f),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      )
                                  ),),

                              ],
                            ),)


                        ],
                      ),


                      height: 670,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.9,

                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0,
                            spreadRadius: 10.0,
                            offset: Offset(
                                10.0, 10.0), // shadow direction: bottom right
                          )
                        ],
                        color: Color(0xfff9f9f9),
                        //boxShadow: [BoxShadow(color: Colors.black,blurRadius: 2.0,spreadRadius: 5.0,offset: Offset(2.0,2.0))]

                      ),


                    )

                )

            ),),
        ],
      ),
    );
  }

  singleCard(Text text) {
    //singleCard(Image image, Text text) {
      return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),

        child: InkWell(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              text


            ],
          ),

        ),

      );
    }
  }
//}