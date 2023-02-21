import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/routes/app_route_constant.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Home"),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            GoRouter.of(context).pushNamed(MyAppRouteConstant.aboutRouteName,params: {"username":"rahul","userid":"rsin"});
          }, child: const Text("About Page")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            GoRouter.of(context).pushNamed(MyAppRouteConstant.profileRouteName);
          }, child: Text("Profile Page")),


        ],
      ),),
    );
  }
}
