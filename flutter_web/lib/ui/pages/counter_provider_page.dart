import 'package:flutter/material.dart';
import 'package:flutter_web/providers/counter_provider.dart';
import 'package:provider/provider.dart';

import '../shared/custom_app_menu.dart';
import '../shared/custom_flat_button.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const _CounterProviderBody(),
    );
  }
}

class _CounterProviderBody extends StatelessWidget {
  const _CounterProviderBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterPorivder = Provider.of<CounterProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppMenu(),
            const Text('Contador Provider', style: TextStyle(fontSize: 20)),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Contador: ${counterPorivder.counter}',
                  style: const TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomFlatButton(
                  text: 'Incrementar',
                  color: Colors.red,
                  onPressed: () {
                    counterPorivder.increment();
                  },
                ),
                CustomFlatButton(
                  text: 'Decrementar',
                  color: Colors.red,
                  onPressed: () {
                    counterPorivder.decrement();
                  },
                ),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
