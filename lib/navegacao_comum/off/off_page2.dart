import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_page3.dart';
    
class OffPage2 extends StatelessWidget {

  const OffPage2({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 2'),
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
                      return const OffPage3();
                    },
                  ),
                );
              },
              child: const Text('Go to Page 3 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.off(() => const OffPage3());
              },
              child: const Text('Go to Page 3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}