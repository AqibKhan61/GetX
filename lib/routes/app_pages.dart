import 'package:get/get.dart';
import 'package:getx/Screens/home.dart';
import 'package:getx/Screens/screen5.dart';
import 'package:getx/Screens/screen4.dart';
import 'package:getx/Screens/screen3.dart';
import 'package:getx/Screens/screen2.dart';
import 'package:getx/routes/app_routes.dart';
import 'package:getx/Controllers/binding.dart';



class AppPages extends AppRoutes{
  static const String initialRoute = AppRoutes.home;

  
  static final  routes= [
    GetPage(name: AppRoutes.home, page: ()=> const HomeScreen()),
    GetPage(name: AppRoutes.screen2, page: ()=> const Screen2()),
    GetPage(name: AppRoutes.screen3, page: ()=> const Screen3()),
    GetPage(name: AppRoutes.screen4, page: ()=> Screen4()),
    GetPage(name: AppRoutes.screen5, page: ()=> Screen5(),binding: Screen5Binding()
  ),
    
  ];
}