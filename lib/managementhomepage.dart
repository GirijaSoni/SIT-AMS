

import 'package:flutter/cupertino.dart';
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
                          Padding(
                            padding: EdgeInsets.only(top: 100, left: 10), child:
                          Text("Student:", style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff665d5c)),),),

                          Padding(padding: EdgeInsets.only(top: 130),
                            child: GridView.count(crossAxisCount: 3,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 10,
                              children: <Widget>[

                                //
                                //Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 70,bottom: 10),child: Text("Hello,I'nnnm"),),
                                Padding(padding: EdgeInsets.only(left: 10),
                                  child: singleCard(
                                      Icon(Icons.add,size: 50,),
                                      Text("Add ", style: TextStyle(
                                          color: Color(0xffc44c4f),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      )
                                  ),),
                                Padding(padding: EdgeInsets.only(right: 0),
                                  child: singleCard(
                                      Icon(Icons.edit,size: 50,),
                                      Text("Edit", style: TextStyle(
                                          color: Color(0xffc44c4f),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      )
                                  ),),

                                Padding(padding: EdgeInsets.only(right: 10),
                                  child: singleCard(Icon(Icons.delete,size: 50,),
                                      Text("Remove",
                                        style: TextStyle(
                                            color: Color(0xffc44c4f),
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      )
                                  ),),



                              ],
                            ),),
                          Padding(padding: EdgeInsets.only(top: 280),child: Divider(
                              height: 64,
                              thickness: 1.0,
                              color: Color(0xff2b313d).withOpacity(0.1),
                              //indent: 32,
                              //endIndent: 32,

                          ),),
                          Padding(
                            padding: EdgeInsets.only(top: 330, left: 10), child:
                          Text("Staff:", style: TextStyle(fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff665d5c)),),),

                          Padding(padding: EdgeInsets.only(top: 360),
                            child: GridView.count(crossAxisCount: 3,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 10,
                              children: <Widget>[

                                //
                                //Padding(padding: EdgeInsets.only(right: 10,left: 10,top: 70,bottom: 10),child: Text("Hello,I'nnnm"),),
                                Padding(padding: EdgeInsets.only(left: 10),
                                  child: singleCard(Icon(Icons.add,size: 50,),
                                      Text("Add", style: TextStyle(
                                          color: Color(0xffc44c4f),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      )
                                  ),),
                                Padding(padding: EdgeInsets.only(right: 0),
                                  child: singleCard(Icon(Icons.edit,size: 50,),
                                      Text("Edit", style: TextStyle(
                                          color: Color(0xffc44c4f),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                      )
                                  ),),

                                Padding(padding: EdgeInsets.only(right: 10),
                                  child: singleCard(Icon(Icons.delete,size: 50,),
                                      Text("Remove",
                                        style: TextStyle(
                                            color: Color(0xffc44c4f),
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      )
                                  ),),



                              ],
                            ),)

                        ],
                      ),


                      height: 560,
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

  singleCard(Icon icon, Text text) {
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
              icon,
              SizedBox(height: 10,),
              text


            ],
          ),

        ),

      );
    }
  }
//}