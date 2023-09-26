import 'package:get/get.dart';
import 'package:getx/screen3.dart';
import 'package:flutter/material.dart';

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
         Center(
          child: Text(
           '${Get.arguments}',
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Get.to(const Screen3(),transition: Transition.rightToLeft,duration: const Duration(seconds: 1));
        }, child: const Text('Go Next'))
      ]),
    );
  }
}
