import 'package:flutter/material.dart';
import 'package:flutter_web/ui/shared/custom_app_menu.dart';

import '../shared/custom_flat_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void add() {
    _counter++;

    setState(() {});
  }

  void remove() {
    _counter--;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppMenu(),
            const Spacer(),
            const Text('Contador Stateful', style: TextStyle(fontSize: 20)),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Contador: $_counter',
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
                  onPressed: () => add(),
                ),
                CustomFlatButton(
                  text: 'Decrementar',
                  color: Colors.red,
                  onPressed: () => remove(),
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
