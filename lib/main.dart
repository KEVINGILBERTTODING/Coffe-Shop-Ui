import 'package:coffe_shop_ui/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Color(0xff0201B18));

    return MaterialApp(
        // routes: RoutesApp.routes,
        initialRoute: RouteApp.onBoardingScreen,
        routes: RouteApp.routes);
  }
}
