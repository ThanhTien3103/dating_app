import 'package:dating_app/bindings.dart';
import 'package:dating_app/view/page/discover_page.dart';
import 'package:dating_app/view/page/home_page.dart';
import 'package:dating_app/view/page/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

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
      initialBinding: InitBindings(),
      initialRoute: '/onboarding', 
      getPages: [
        GetPage(name: '/onboarding', page: () => OnBoardingPage(key: UniqueKey(),) ),
        GetPage(name: '/home', page: () => HomePage()),
      ],
    );
  }
}

