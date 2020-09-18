import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sitams/bloc.navigation_bloc/navigation_bloc.dart';
//import '../bloc/navigation_bloc/navigation_bloc.dart';

class HomePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b313d),
      body:Stack(
        children:<Widget> [
          Align(alignment: Alignment.center,

            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                Image(image: AssetImage('images/girija.png'),
                  height: MediaQuery.of(context).size.height*0.25,
                    width: MediaQuery.of(context).size.height*0.25),
                SizedBox(height: MediaQuery.of(context).size.height*0.05),
                Container(
                    height: MediaQuery.of(context).size.height*0.5,width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children:<Widget> [

                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),child:Text(
                        "NAME : GIRIJA SONI  ", style: TextStyle(fontSize: 30,color: Color(0xffc44c4f)),
                      )


                      ),
                      Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),child:Text(
                        "PRN: 18070124028 ", style: TextStyle(fontSize: 30,color: Color(0xffc44c4f)),
                      )


                      ),

                      Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),child:Text(
                        "PHONE: 9373234789", style: TextStyle(fontSize: 30,color: Color(0xffc44c4f)),
                      )
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),child:Text(
                        "BRANCH: IT      ", style: TextStyle(fontSize: 30,color: Color(0xffc44c4f)),
                      )
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),child:Text(
                        "BATCH: 2018-2022  ", style: TextStyle(fontSize: 30,color: Color(0xffc44c4f)),
                      )
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),child:Text(
                        "PERSONALITY:LIT", style: TextStyle(fontSize: 30,color: Color(0xffc44c4f)),
                      )
                      ),


                    ],
                  ),

                )
              ],

              ),
            ),

        ],
      ) ,
    );
  }
}
