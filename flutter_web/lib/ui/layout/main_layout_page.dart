import 'package:flutter/material.dart';

import '../shared/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomAppMenu(),
            // const Spacer(),
            Expanded(child: child),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}
