import 'dart:io';
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
              height: 400,
              child: ListView.builder(
                  itemCount: controller.fruits.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => Card(
                        child: ListTile(
                          onLongPress: () {
                            Colors.transparent;
                          },
                          title: Text(controller.fruits[index]),
                          trailing: Icon(
                            Icons.favorite_border_outlined,
                            color: controller.fruits2.contains(index)
                                ? Colors.red
                                : Colors.white,
                          ),
                          onTap: () {
                            controller.onfavorite(index);
                          },
                        ),
                      ),
                    );
                  }),
            ),
            Obx(
              () =>  Column(
                children: [
                  CircleAvatar(
                radius: 35,
                backgroundImage: controller.imagepath.isNotEmpty
                    ? FileImage(File(controller.imagepath.toString()))
                    : null
              ),
              TextButton(onPressed: () {
                controller.imagepicker();
              },
               child: const Text('Pick Image'),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
