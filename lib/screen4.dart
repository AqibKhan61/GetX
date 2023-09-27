import 'package:get/get.dart';
import 'countercontroller.dart';
import 'package:flutter/material.dart';
import 'package:getx/routes/app_routes.dart';








class Screen4 extends  StatelessWidget {
  Screen4({super.key});
  //final count = (0).obs;

//void increment() => count.value++;
//void decrement() {
//  count.value--;
//}

  final CounterController controller = Get.put(CounterController());
  
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 10),
            Center(
                child: Obx(
              () => Text(
                controller.count.value.toString(),
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                controller.decrement();
              },
              child: const Text('Decrement'),
            ),
            const SizedBox(height: 40,),
            Obx(() => Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: controller.colors[controller.index.value].withOpacity(controller.opacity.value),
                borderRadius: BorderRadius.circular(15),
              ),
            ),),
            Obx(
              () => 
              Slider(value: controller.opacity.value, onChanged: (value){
                controller.opacity.value = value;
              }),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Notification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Obx(
                  () =>  Switch(value: controller.notification.value, onChanged: (value){
                    if (value == false){
                      print((value));
                    }
                    controller.notification.value = value;
                    if(value == true && controller.index.value < 4){
                      controller.index.value++;
                     controller.notification.value = value; 
                    }
                    
                  }),
                ),
              ],
            ),
            const SizedBox(height:10),
            ElevatedButton(onPressed: (){
              Get.toNamed(AppRoutes.screen5);
            }, child: const Text('Go Next'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.ads_click),
      ),
    );
  }
}
