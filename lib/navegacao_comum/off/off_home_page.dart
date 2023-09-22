import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_page1.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffPage1();
                    },
                  ),
                );
              },
              child: const Text('Go to Page 1 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const OffPage1());
              },
              child: const Text('Go to Page 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
