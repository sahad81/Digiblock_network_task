import 'package:digiblock_network_task/screens/home/home.dart';
import 'package:digiblock_network_task/screens/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RoutHelper{

  static const String splash = '/splash';
  static const String home = '/home';

  static List<GetPage> routes = [

        GetPage(
        name: splash,
        page: () => SplashScreen(
          )),
                 GetPage(
        name: home,
        page: () => HomeScreen(
          )),
  ];
}