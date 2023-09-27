import 'package:get/get.dart';
import 'package:getx/home.dart';
import 'package:getx/screen2.dart';
import 'package:getx/screen3.dart';
import 'package:getx/screen4.dart';
import 'package:getx/screen5.dart';
import 'package:getx/routes/app_routes.dart';



class AppPages extends AppRoutes{
  static const String initialRoute = AppRoutes.home;

  
  static final  routes= [
    GetPage(name: AppRoutes.home, page: ()=> const HomeScreen()),
    GetPage(name: AppRoutes.screen2, page: ()=> const Screen2()),
    GetPage(name: AppRoutes.screen3, page: ()=> const Screen3()),
    GetPage(name: AppRoutes.screen4, page: ()=> Screen4()),
    GetPage(name: AppRoutes.screen5, page: ()=> Screen5()),
    
  ];
}