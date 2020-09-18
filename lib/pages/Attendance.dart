import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:<Widget> [
          Align(alignment: Alignment.center,
          child: Column(
            children:<Widget> [
              SizedBox(height: MediaQuery.of(context).size.height/11,),
              Text("Your Attendance!",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30,color: Color(0xffc44c4f)),),
              SizedBox(height: MediaQuery.of(context).size.height/11,),
              Material(
                elevation: 10,
                
                child: Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  width: MediaQuery.of(context).size.width*0.85,
                  decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Align(alignment: Alignment.center,child:Image(image: AssetImage('images/chart.png'),
                    height:MediaQuery.of(context).size.height*0.5 ,
                    width: MediaQuery.of(context).size.width*0.85,
                  ),
                  )
                ),

              ),

              SizedBox(height: MediaQuery.of(context).size.height/10,),
              Row
                (
                  children:<Widget> [
                    SizedBox(width:MediaQuery.of(context).size.height*0.048 ,),
                    SizedBox (height: MediaQuery.of(context).size.height*0.15,
                        width: MediaQuery.of(context).size.width*0.37,child:
                      RaisedButton(
                      elevation: 10,
                      color: Color(0xffc44c4f),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Text('Subjectwise\nAttendance',style: TextStyle(fontSize: 15,color: Colors.white),),
                      onPressed: (){

                      },
                    ),),
                    SizedBox(width:MediaQuery.of(context).size.height*0.05 ,),
                    SizedBox (height: MediaQuery.of(context).size.height*0.15,width: MediaQuery.of(context).size.width*0.37,child:
                    RaisedButton(
                      elevation: 10,
                      color: Color(0xffc44c4f),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      child: Text('Some\nBox',style: TextStyle(fontSize: 15,color: Colors.white),),
                      onPressed: (){

                      },
                    ),)
                  ],



                ),
              //Align(alignment: ,)
            ],

          ),)
        ],
      )
    );
  }
}
