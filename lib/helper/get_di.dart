import 'package:digiblock_network_task/controlls/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future init() async {
 Get.lazyPut(() => HomeController()); 

}