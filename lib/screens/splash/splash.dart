import 'package:digiblock_network_task/controlls/splash_controller.dart';
import 'package:digiblock_network_task/util/dimensions.dart';
import 'package:digiblock_network_task/util/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override


void initState() {
   Future.delayed(Duration(seconds: 3)).then((value) => Get.find<SplashController>().changescreen());
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      body: Center(
child: Text('BOOKING.COM',style: robotoBold.copyWith(color: Theme.of(context).cardColor,fontSize: Dimensions.fontSizeOverLarge),),
      ),
    );
  }
}