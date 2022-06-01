import 'package:flutter/material.dart';
import 'package:flutter_web/ui/shared/custom_flat_button.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Text(
            '404',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'No se encontró la pagina',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          CustomFlatButton(
            text: 'Regresar',
            color: Colors.black,
            onPressed: () => Navigator.pushNamed(context, 'stateful'),
          )
        ],
      )),
    );
  }
}
