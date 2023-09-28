import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx/routes/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Get-X')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('List Item 1'),
                subtitle: const Text('This is a Sub Heading'),
                onTap: () {
                  Get.defaultDialog(
                      title: 'Error',
                      middleText: 'Some thing went wrong Please wait',
                      titlePadding: const EdgeInsets.only(top: 20),
                      contentPadding: const EdgeInsets.all(20),
                      confirm: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('Ok')));
                },
              ),
            ),
            const SizedBox(height: 5),
            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('List Item 2'),
                subtitle: const Text('This is also a Sub Heading'),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade400,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.light_mode),
                              title: const Text('Light Mode'),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.dark_mode),
                              title: const Text('Dark Mode'),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ));
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutes.screen2);
              },
              child: const Text('Go Next'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Hyee',
            'This is Snackbar using GETX',
            duration: const Duration(
              seconds: 1,
            ),
          );
        },
        child: const Icon(Icons.ads_click),
      ),
    );
  }
}
