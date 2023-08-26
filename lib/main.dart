import 'package:flutter/material.dart';
import 'package:admin_app/routes/myRoutes.dart';
import 'login-page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: myRoutes,
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
