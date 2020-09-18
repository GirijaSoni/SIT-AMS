import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sitams/studentlogin.dart';
//import 'file:///C:/Users/girij/AndroidStudioProjects/sitams/lib/SideBar/studentlogin.dart';

import 'addnewstudent.dart';
import 'managementhomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Screen',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        primaryColor: Color(0xffc44c4f),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SIT-AMS APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

      body: Stack(

        children:<Widget> [

          Opacity(
            opacity: 0.25,
            child: Image(image: AssetImage('images/SIT.png'),height: 800,fit: BoxFit.fitHeight,),

          ),
          Padding(padding: EdgeInsets.only(bottom: 30),child:    Align(alignment: Alignment.bottomCenter,child:Container(
            child: Padding(padding: EdgeInsets.only(right: 0,left: 0),
            child: Column(
              children:<Widget> [
                SizedBox(height: 22,),
                SizedBox(height: 45,width: 300,child:  RaisedButton(
                  elevation: 10,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  // color: Color(0xfff2998f),
                  color: Color(0xffc44c4f),

                  onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => studentlogin()),);
                  },
                  child: Text("Student Login",style:TextStyle(color: Colors.white,fontSize: 20),),
                ),),
                SizedBox(height: 10,),

                SizedBox(height: 45,width: 300,child:  RaisedButton(
                  elevation: 10,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  // color: Color(0xfff2998f),
                  color: Color(0xffc44c4f),

                  onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => managementhomepage()),);
                  },
                  child: Text("Management Login",style:TextStyle(color: Colors.white,fontSize: 20),),
                ),),
                SizedBox(height: 10,),
                SizedBox(height: 45,width: 300,child:  RaisedButton(
                  elevation: 10,
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  // color: Color(0xfff2998f),
                  color: Color(0xffc44c4f),

                  onPressed: (){

                  },
                  child: Text("Staff Login",style:TextStyle(color: Colors.white,fontSize: 20),),
                ),)

              ],
            ),),
           height: 200,
                          width: 350,
                          decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10))),

          ) ,),
          )


      ],
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // children: [
          //   Collegeimage(),
          //   SizedBox(height: 100,),
          //   SizedBox(width: 50000,height: 50,
          //       child: RaisedButton(onPressed:(){ Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => studentlogin()),);},
          //       shape: StadiumBorder(),
          //       elevation: 30,
          //       color: Colors.red,
          //       child: Text('Student Login',
          //           style: TextStyle(fontSize: 20,color: Colors.white)))),
          //   SizedBox(height: 20,),
          //   SizedBox(width: 50000,height: 50,
          //       child: RaisedButton(onPressed:(){},
          //           shape: StadiumBorder(),
          //           elevation: 30,
          //           color: Colors.red,
          //           child: Text('Management Login',
          //               style: TextStyle(fontSize: 20,color: Colors.white)))),
          //   SizedBox(height: 20,),
          //   Container(width: 50,height: 50,
          //       child: RaisedButton(onPressed:(){Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => addnewstudent()),);},
          //           shape: StadiumBorder(),
          //           elevation: 30,
          //           color: Colors.red,
          //           child: Text('Staff Login',
          //               style: TextStyle(fontSize: 20,color: Colors.white))))
          //       ])
            // This trailing comma makes auto-formatting nicer for build methods.
      )
    );

  }
}
class Collegeimage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage Sitimage = AssetImage('images/Sitimage.png');
    Image image = Image(image: Sitimage);
    return Container(child: image,height: 350.0,width: 350.0,);
  }

}