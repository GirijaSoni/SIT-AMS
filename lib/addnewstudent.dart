import 'package:flutter/material.dart';
import 'package:sitams/StuHomePage.dart';
import 'package:sitams/sidebar/sidebar.dart';

import 'package:sitams/studentlogin.dart';
//import 'file:///C:/Users/girij/AndroidStudioProjects/sitams/lib/SideBar/studentlogin.dart';
import 'main.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StuHomePage(),
    );
  }
}

class addnewstudent extends StatefulWidget {
  @override
  _addnewstudent createState() => _addnewstudent();
}

class _addnewstudent extends State<addnewstudent> {
  String firstname,lastname,email, prn,password,phone,branch,year;
  Widget _buildFirstNameRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.name,
        onChanged: (value) {
          setState(() {
            firstname = value;
          });
        },
        decoration: InputDecoration(

            labelText: 'First Name'),
      ),
    );
  }
  Widget _buildLastNameRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.name,
        onChanged: (value) {
          setState(() {
            lastname = value;
          });
        },
        decoration: InputDecoration(

            labelText: 'Last Name'),
      ),
    );
  }
  Widget _buildPrnRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            prn = value;
          });
        },
        decoration: InputDecoration(

            labelText: 'PRN'),
      ),
    );
  }
  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(

            labelText: 'E-mail'),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          labelText: 'Password',
        ),
      ),
    );
  }
  Widget _buildPhoneRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        onChanged: (value) {
          setState(() {
            phone = value;
          });
        },
        decoration: InputDecoration(

            labelText: 'Phone'),
      ),
    );
  }
  Widget _buildBranchRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            branch = value;
          });
        },
        decoration: InputDecoration(

            labelText: 'Branch'),
      ),
    );
  }
  Widget _buildYearRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            year = value;
          });
        },
        decoration: InputDecoration(

            labelText: 'Year'),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height:20,),
        Container(
          height: 1.0 * (MediaQuery.of(context).size.height / 15),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StuHomePage()),);},//Navigator.push(

            child: Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildOrRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

    );
  }



  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),

          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildFirstNameRow(),
                _buildLastNameRow(),
                _buildEmailRow(),
                _buildPrnRow(),
                _buildPasswordRow(),
                _buildPhoneRow(),
                _buildBranchRow(),
                _buildYearRow(),
                SizedBox(height: 20),

                _buildLoginButton(),
                _buildOrRow(),

              ],
            ),
          ),
        ),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.red,
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70),
                    bottomRight: const Radius.circular(70),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                _buildLogo(),

                SizedBox(height: 30,),
                _buildContainer(),

              ],
            )
          ],
        ),
      ),
    );
  }
}
class Profileimage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage proffimage = AssetImage('images/proffimage.png');
    Image image = Image(image: proffimage);
    return Container(child: image,height: 200.0,width: 200.0,);
  }

}