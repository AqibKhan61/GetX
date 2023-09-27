import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CounterController extends GetxController {
  RxString imagepath = ''.obs;
  Future imagepicker()async{
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.camera);
    if(image != null){
      imagepath.value = image.path.toString();
    }
  }


  RxList<String> fruits = ['Mango', 'Apple', 'Orange', 'Grapes', 'Banana'].obs;
  RxList fruits2 = [].obs;

  onfavorite(index) {
    if (fruits2.contains(index)) {
      fruits2.remove(index);
    } else {
      fruits2.add(index);
    }
  }

  // addtofav(String value){
  //   fruits2.add(value);
  // }

  // removetofav(String value){
  //   fruits2.remove(value);
  // }

  final icon = const Icon(Icons.favorite_border_outlined).obs;
  final index = 0.obs;
  RxBool notification = false.obs;
  RxDouble opacity = 0.1.obs;
  var colors = <Color>[
    Colors.black,
    Colors.amberAccent,
    Colors.blueAccent,
    Colors.grey,
    Colors.blueAccent,
    Colors.grey
  ];
  RxInt count = 0.obs;
  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}
