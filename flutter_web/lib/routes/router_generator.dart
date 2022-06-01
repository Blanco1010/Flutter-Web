import 'package:flutter/material.dart';
import 'package:flutter_web/ui/pages/404_page.dart';
import 'package:flutter_web/ui/pages/adomi_pedido_page.dart';
import 'package:flutter_web/ui/pages/counter_page.dart';

import '../ui/pages/counter_provider_page.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case 'stateful':
        return _fadeRoute(const CounterPage(), 'stateful');
      //return MaterialPageRoute(
      //  settings: const RouteSettings(name: 'stateful'),
      //  builder: (_) => const CounterPage(),
      //);

      case 'provider':
        return _fadeRoute(const CounterProviderPage(), 'provider');
      //return MaterialPageRoute(
      //  settings: const RouteSettings(name: 'provider'),
      //  builder: (_) => const CounterProviderPage(),
      //);

      case 'pedido':
        return _fadeRoute(const AdomiPedidoPage(), 'pedido');

      default:
        return _fadeRoute(const Page404(), '404');
      //return MaterialPageRoute(
      //  settings: const RouteSettings(name: '404'),
      //  builder: (_) => const Page404(),
      //);
    }
  }

  static PageRoute _fadeRoute(Widget widget, String routerName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routerName),
        pageBuilder: (_, __, ___) => widget,
        transitionsBuilder: (_, animation, __, ___) => widget);
    //FadeTransition(
    //      opacity: animation,
    //      child: widget,
    //    ));
  }
}
