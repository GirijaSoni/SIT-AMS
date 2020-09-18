import 'package:flutter/material.dart';
import 'package:sitams/bloc.navigation_bloc/navigation_bloc.dart';
//import '../bloc/navigation_bloc/navigation_bloc.dart';

class HomePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Profile",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
