import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx/routes/app_routes.dart';



class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body:
           Column(mainAxisAlignment: MainAxisAlignment.center, children: [
         const Center(
          child: Text(
           'This is Second Page',
            style:  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Get.toNamed(AppRoutes.screen3);
        }, child: const Text('Go Next'))
      ]),
    );
  }
}
