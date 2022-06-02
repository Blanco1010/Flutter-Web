// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'dart:js' as js;

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
            FadeInUp(
              duration: const Duration(seconds: 1),
              from: -MediaQuery.of(context).size.height,
              child: Image.asset('assets/adomi-header.png'),
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
                  child: Image.asset('assets/google-play.png')),
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
                  child: Image.asset('assets/apple-store.png')),
            ),
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
        ),
      ),
    );
  }
}
