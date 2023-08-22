import 'package:digiblock_network_task/controlls/flights_controller.dart';
import 'package:digiblock_network_task/controlls/splash_controller.dart';
import 'package:digiblock_network_task/controlls/stays_controller.dart';
import 'package:get/get.dart';

Future init() async {
 Get.lazyPut(() => StaysController()); 
 
 Get.lazyPut(() => FlightController()); 
 Get.lazyPut(() => SplashController()); 

}