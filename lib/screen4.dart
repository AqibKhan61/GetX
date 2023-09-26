import 'package:get/get.dart';
import 'package:flutter/material.dart';


class Screen4 extends StatelessWidget {
 Screen4({super.key});
 final count = 0.obs;
 
void increment() => count.value++;
void decrement() => count.value--;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            increment();
          }, child: const Text('Increment'),),
          const SizedBox(height: 10),
          Center(
            child: Obx(
              () => Text(count.value.toString(),style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            )
          ),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            decrement();
          }, child: const Text('Decrement'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.ads_click),
        ),
      
    );
  }
}