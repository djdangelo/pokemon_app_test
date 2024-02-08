import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pokemon_app_test/pages/pages.dart';

void main() {
  // ignore: unused_local_variable
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Pokemon App',
    initialRoute: '/home',
    getPages: [
      GetPage(
        name: '/home',
        page: () => HomePage(),
      ),
      GetPage(
        name: '/error',
        page: () => ErrorPage(),
      )
    ],
  ));
}
