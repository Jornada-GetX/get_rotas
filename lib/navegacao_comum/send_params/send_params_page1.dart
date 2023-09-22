import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsPage1 extends StatelessWidget {
  const SendParamsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final paramNative = ModalRoute.of(context)?.settings.arguments ?? 'Parametro não enviado!';
    final paramGetX = Get.arguments ?? 'Parametro não enviado!';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo Parametros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nativo: ${paramNative.toString()}'),
            Text('GetX: ${paramGetX.toString()}'),
          ],
        ),
      ),
    );
  }
}
