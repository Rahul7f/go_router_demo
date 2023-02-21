import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  String username;
  String user_id;
   About({required this.username,required this.user_id ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("About"),
          SizedBox(height: 20,),
          Text(username),
          SizedBox(height: 20,),
          Text(user_id),
        ],
      ),),
    );
  }
}
