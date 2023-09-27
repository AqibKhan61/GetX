import 'dart:ffi';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx/countercontroller.dart';

class Screen5 extends StatelessWidget {
  Screen5({super.key});
 
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              'This is a List in which yOu can make your item Favorite!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromARGB(255, 88, 87, 87),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: controller.fruits.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                          title: Text(controller.fruits[index]),
                          trailing: Obx(
                            () => Icon(
                              Icons.favorite_border_outlined,
                              color: controller.fruits2.contains(controller.fruits[index])
                                  ? Colors.red
                                  : Colors.white,
                            ),
                          ),
                          onTap: () {
                            if (controller.fruits2.contains(controller.fruits[index])) {
                              controller.removetofav(controller.fruits[index]);
                            } else {
                              controller.addtofav(controller.fruits[index]);
                            }
                            
                          },
                        ),
                      );
                    
                  }),
            )
          ],
        ),
      ),
    );
  }
}
