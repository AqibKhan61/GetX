import 'package:get/get.dart';
import 'package:getx/screen4.dart';
import 'package:flutter/material.dart';

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
            Get.back();
            Get.back();
          },
          child: const Text('Goto 1stPage'),
        ),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Get.to(Screen4(),transition: Transition.rightToLeft,duration: const Duration(seconds: 1));
        }, child: const Text('Go Next'))
      ]),
    );
  }
}
