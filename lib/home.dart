import 'package:get/get.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get-X'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Hello World!'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar('Hyee', 'This is Snackbar using GETX',
         duration: const Duration(
          seconds: 1,
        ),
        );

      }),
    );
  }
}