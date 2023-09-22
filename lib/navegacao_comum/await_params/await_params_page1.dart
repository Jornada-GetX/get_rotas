import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop('Retornando parametro por Flutte Nativo');
              },
              child: const Text('Retornando com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () async {
                Get.back(result: 'Retornando parametro por GetX');
              },
              child: const Text('Retornando com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
