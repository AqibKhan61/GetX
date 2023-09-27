import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CounterController extends GetxController {
  RxList<String> fruits = ['Mango', 'Apple', 'Orange', 'Grapes', 'Banana'].obs;
  RxList fruits2 = [].obs;

  addtofav(String value){
    fruits2.add(value);
  }

  removetofav(String value){
    fruits2.remove(value);
  }

  final icon = Icon(Icons.favorite_border_outlined).obs;
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
