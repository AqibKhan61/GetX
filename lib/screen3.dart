import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx/routes/app_routes.dart';


class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Center(
          child: Text(
            'This is a 3rd Page',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Get.offAllNamed(AppRoutes.home);
          },
          child: const Text('Goto Home'),
        ),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Get.toNamed(AppRoutes.screen4);
        }, child: const Text('Go Next'))
      ]),
    );
  }
}
