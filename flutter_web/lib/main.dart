import 'package:flutter/material.dart';
import 'package:flutter_web/routes/router_generator.dart';
import 'package:flutter_web/ui/pages/counter_page.dart';
import 'package:flutter_web/ui/pages/counter_provider_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter web',
      //routes: {
      //  'stateful': (_) => const CounterPage(),
      //  'provider': (_) => const CounterProviderPage(),
      //},
      initialRoute: 'stateful',
      onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
    );
  }
}
