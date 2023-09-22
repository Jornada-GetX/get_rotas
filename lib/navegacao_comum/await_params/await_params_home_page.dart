import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/await_params/await_params_page1.dart';

class AwaitParamsHomePage extends StatelessWidget {
  const AwaitParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) {
                        return const AwaitParamsPage1();
                      },
                      settings: const RouteSettings(arguments: 'Parametro pelo Flutter Nativo')),
                );
                debugPrint('Nativo: $result');
              },
              child: const Text('Go to Page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () async {
                final result = await Get.to(() => const AwaitParamsPage1(), arguments: 'Parametro pelo Flutter GetX');
                debugPrint('Getx: $result');
              },
              child: const Text('Go to Page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
