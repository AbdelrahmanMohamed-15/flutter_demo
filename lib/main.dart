import 'package:ecommerce_demo/Constant/app_binding.dart';
import 'package:ecommerce_demo/Constant/cachHelper.dart';

import 'View/Screens/generalPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CachHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter E-Commerce Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      initialBinding: AppBinding(),
      getPages: [GetPage(name: '/', page: () => const GeneralPage())],
    );
  }
}
