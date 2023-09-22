import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_page2.dart';
    
class OffPage1 extends StatelessWidget {

  const OffPage1({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 1'),
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
                      return const OffPage2();
                    },
                  ),
                );
              },
              child: const Text('Go to Page 2 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const OffPage2());
              },
              child: const Text('Go to Page 2 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}