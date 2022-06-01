import 'package:flutter/material.dart';
import 'package:flutter_web/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            color: Colors.black,
            onPressed: () => Navigator.pushNamed(context, 'stateful'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            color: Colors.black,
            onPressed: () => Navigator.pushNamed(context, 'provider'),
          ),
          const SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra pagina',
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
