import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviando Parâmetros'),
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
                      return const SendParamsPage1();
                    },
                    settings: const RouteSettings(
                      arguments: 'Parametro pelo Flutter Nativo'
                    )
                  ),
                );
              },
              child: const Text('Go to Page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const SendParamsPage1(), arguments: 'Parametro pelo Flutter GetX');
              },
              child: const Text('Go to Page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
