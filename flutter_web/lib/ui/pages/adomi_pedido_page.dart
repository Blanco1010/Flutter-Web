import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../shared/custom_app_menu.dart';
import 'dart:js' as js;
import '../shared/custom_flat_button.dart';

class AdomiPedidoPage extends StatelessWidget {
  const AdomiPedidoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          FadeInUp(
            duration: const Duration(seconds: 1),
            from: -MediaQuery.of(context).size.height,
            child: Image.asset('adomi-header.png'),
          ),
          const SizedBox(height: 10),
          ElasticIn(
            delay: const Duration(seconds: 2),
            child: const Text(
              'Descargala Ya!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElasticIn(
            delay: const Duration(seconds: 2),
            child: TextButton(
                onPressed: () {
                  js.context.callMethod('open', [
                    'https://play.google.com/store/apps/details?id=com.adomi.pedidos'
                  ]);
                },
                child: Image.asset('google-play.png')),
          ),
          const SizedBox(height: 10),
          ElasticIn(
            delay: const Duration(seconds: 2),
            child: TextButton(
                onPressed: () {
                  js.context.callMethod('open', [
                    'https://apps.apple.com/co/app/adomi-pedidos/id1537958982'
                  ]);
                },
                child: Image.asset('apple-store.png')),
          ),
          const Spacer(),
          FadeIn(
            delay: const Duration(seconds: 3),
            child: const Text(
              'Copyright Adomi App - 2021',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 50),
          FadeIn(
            delay: const Duration(seconds: 3),
            child: TextButton(
              onPressed: () {
                js.context.callMethod('open', ['https://www.adomi.app/']);
              },
              child: const Text(
                'www.adomi.app',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      )),
    );
  }
}
