import 'package:app/utilities/routes.dart';
import 'package:app/widgets/orange_btn.dart';
import 'package:flutter/material.dart';

class StartupPage extends StatelessWidget {
  const StartupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
            ),
          ),
          Text(
            "Welcome",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 38,
            width: double.infinity,
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 168,
            width: 168,
            child: Image.asset(
              "assets/images/logo/logo.png",
              fit: BoxFit.fill,
            ),
          ),
          const Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
            ),
          ),
          OrangeBtn(
            btnText: "Continue",
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.loginRoute);
            },
          ),
          const SizedBox(
            height: 50,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
