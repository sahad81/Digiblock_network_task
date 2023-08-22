import 'package:digiblock_network_task/helper/rount_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:digiblock_network_task/helper/get_di.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        
      ),
    initialRoute:RoutHelper.splash ,
    getPages: RoutHelper.routes,
    );
  }
}
