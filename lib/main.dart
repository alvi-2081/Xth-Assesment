import 'package:flutter/material.dart';
import 'package:xth_assesment/constants/color_constants.dart';
import 'package:xth_assesment/constants/route_constants.dart';
import 'package:xth_assesment/generated_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XTH Assesment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.black),
        useMaterial3: true,
      ),
      initialRoute: RouteConstants.bottomNav,
      onGenerateRoute: generateRoute,
    );
  }
}
