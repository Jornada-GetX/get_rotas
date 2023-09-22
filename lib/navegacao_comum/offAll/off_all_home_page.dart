import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_all_page1.dart';

class OffAllHomePage extends StatelessWidget {
  const OffAllHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off All Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffAllPage1();
                    },
                    settings: const RouteSettings(name: 'Page1'),
                  ),
                );
              },
              child: const Text('Go to Page 1 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.off(() => const OffAllPage1());
              },
              child: const Text('Go to Page 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
