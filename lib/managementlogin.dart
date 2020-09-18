import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sitams/managementhomepage.dart';
import 'package:sitams/sidebar/sidebar.dart';
//jects/sitams/lib/SideBar/studentlogin.dart';
import 'StuHomePage.dart';
import 'main.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: managementlogin(),
    );
  }
}

class managementlogin extends StatefulWidget {
  @override
  _managementlogin createState() => _managementlogin();
}

class _managementlogin extends State<managementlogin> {
  String email,password,emailstring="E-mail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,


      body: Stack(
        children: <Widget>[
          Material(
            elevation: 10,

            child: Align(alignment: Alignment.center,

              child: Container(
                child: Column(
                  children:<Widget> [
                    SizedBox(height: MediaQuery.of(context).size.height/15,),
                    Material(
                      elevation: 10,
                      child: Image(image: AssetImage('images/management.png')
                        ,height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.height * 0.2,
                      ),shape: CircleBorder(),
                    ),
                    SizedBox(height: 20,),
                    Text("Hello Management!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                    Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.04,
                        left:MediaQuery.of(context).size.width*0.04,
                        top:MediaQuery.of(context).size.width*0.04,
                        bottom: MediaQuery.of(context).size.width*0.04),child:  new Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height*0.06,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(
                            color: Color(0xff665d5c),
                            width: 4.0,
                          ),
                          borderRadius: new BorderRadius.circular(12.0)
                      ),

                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                        decoration:InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            labelText: "E-mail"
                        ) ,
                      ),
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.04,
                        left:MediaQuery.of(context).size.width*0.04,
                        top:MediaQuery.of(context).size.width*0.04,
                        bottom: MediaQuery.of(context).size.width*0.04),child:  new Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height*0.06,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(
                            color: Color(0xff665d5c),
                            width: 4.0,
                          ),
                          borderRadius: new BorderRadius.circular(12.0)
                      ),

                      child:  new TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        decoration:InputDecoration(
                            labelText: "Password",prefixIcon: Icon(Icons.lock)
                        ) ,
                      ),
                    ),
                    ),

                    Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.0,
                      left: MediaQuery.of(context).size.width*0.00,
                      top: MediaQuery.of(context).size.height *0.02,
                      bottom: MediaQuery.of(context).size.height *0.05,),
                        child:SizedBox(height: MediaQuery.of(context).size.height/20,
                            width:MediaQuery.of(context).size.width/2 ,
                            child:RaisedButton(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),

                              color: Color(0xff2b313d),
                              child: Text("Login",style: TextStyle(color: Colors.white),),
                              onPressed: (){Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => managementhomepage()),);

                              },
                            )
                        )
                    )


                    // decoration: ecoration(
                    //
                    //     prefixIcon: Icon(
                    //       Icons.email,
                    //
                    //     ),
                    //     labelText: 'E-mail'),
                    //),
                    //)
                  ],

                ),

                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    color: Color(0xffc44c4f),borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),

            ),
          )
        ],
      ),
    );



  }
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomPadding: false,
//         backgroundColor: Colors.red,
//         body: Stack(
//           children: <Widget>[
//             Container(
//               height: MediaQuery.of(context).size.height * 0,
//               width: MediaQuery.of(context).size.width,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: const Radius.circular(70),
//                     bottomRight: const Radius.circular(70),
//                   ),
//                 ),
//               ),
//             ),
//             Column(

//   Widget _buildEmailRow() {
//     return Padding(
//
//     );
//   }
//
//   Widget _buildPasswordRow() {
//     return ,
//             color:Colors.red
//           ),
//           labelText: 'Password',
//         ),
//       ),
//     );Padding(
// //       padding: EdgeInsets.all(8),
// //       child: TextFormField(
// //         keyboardType: TextInputType.text,
// //         obscureText: true,
// //         onChanged: (value) {
// //           setState(() {
// //             password = value;
// //           });
// //         },
// //         decoration: InputDecoration(
// //           prefixIcon: Icon(
// //             Icons.lock
//   }
//
//
//   Widget _buildLoginButton() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         SizedBox(height:20,),
//         Container(
//           height: 1.0 * (MediaQuery.of(context).size.height / 15),
//           width: 5 * (MediaQuery.of(context).size.width / 10),
//           margin: EdgeInsets.only(bottom: 20),
//           child: RaisedButton(
//             elevation: 5.0,
//             color: Colors.red,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30.0),
//             ),
//             onPressed: () {Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => studenthomepage()),);},//Navigator.push(
//
//             child: Text(
//               "Login",
//               style: TextStyle(
//                 color: Colors.white,
//                 letterSpacing: 1.5,
//                 fontSize: MediaQuery.of(context).size.height / 40,
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget _buildOrRow() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//
//     );
//   }
//
//
//
//   Widget _buildContainer() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ClipRRect(
//           borderRadius: BorderRadius.all(
//             Radius.circular(30),
//           ),
//
//           child: Container(
//             height: MediaQuery.of(context).size.height * 0.4,
//             width: MediaQuery.of(context).size.width * 0.8,
//             decoration: BoxDecoration(
//               color: Colors.yellow,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       "Welcome back Symbian!",
//                       style: TextStyle(
//                         fontSize: MediaQuery.of(context).size.height / 30,
//                       ),
//                     ),
//                   ],
//                 ),
//                 _buildEmailRow(),
//                 _buildPasswordRow(),
//                 SizedBox(height: 20),
//
//                 _buildLoginButton(),
//                 _buildOrRow(),
//
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomPadding: false,
//         backgroundColor: Colors.red,
//         body: Stack(
//           children: <Widget>[
//             Container(
//               height: MediaQuery.of(context).size.height * 0,
//               width: MediaQuery.of(context).size.width,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: const Radius.circular(70),
//                     bottomRight: const Radius.circular(70),
//                   ),
//                 ),
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 _buildLogo(),
//
//                 SizedBox(height: 30,),
//                 _buildContainer(),
//
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
// class Profileimage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     AssetImage proffimage = AssetImage('images/proffimage.png');
//     Image image = Image(image: proffimage);
//     return Container(child: image,height: 200.0,width: 200.0,);
//   }

}