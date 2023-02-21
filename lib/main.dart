import 'package:flutter/material.dart';
import 'package:go_router_demo/routes/app_route_config.dart';

void main()=>runApp( MyApp());
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  MyAppRouter _myAppRouter = MyAppRouter();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _myAppRouter.router.routeInformationParser,
      routerDelegate: _myAppRouter.router.routerDelegate,
    );
  }
}
