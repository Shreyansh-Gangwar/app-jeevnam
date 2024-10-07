import 'package:app/services/auth_services.dart';
import 'package:app/utilities/routes.dart';
import 'package:app/widgets/orange_btn.dart';
import 'package:app/widgets/text_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BodyStatsPage extends StatefulWidget {
  const BodyStatsPage({super.key});

  @override
  State<BodyStatsPage> createState() => _BodyStatsPageState();
}

class _BodyStatsPageState extends State<BodyStatsPage> {
  final TextEditingController heightController = TextEditingController();

  final TextEditingController weightController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    heightController.dispose();
    weightController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          const Expanded(flex: 50, child: SizedBox()),
          Text(
            'Your Body Stats?',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Image.asset('assets/images/body_stats.png'),
          const Expanded(flex: 67, child: SizedBox()),
          Text(
            'Your Height (in cm)',
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),
          ),
          SizedBox(
              width: 339,
              child: TextFieldcustom(
                  controller: heightController,
                  obscureText: false,
                  hint: 'Height',
                  formKey: 'height')),
          const Expanded(flex: 47, child: SizedBox()),
          Text(
            'Your Weight (in kgs)',
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 20),
          ),
          SizedBox(
              width: 339,
              child: TextFieldcustom(
                  controller: weightController,
                  obscureText: false,
                  hint: 'Weight',
                  formKey: 'height')),
          const Expanded(flex: 72, child: SizedBox()),
          OrangeBtn(
              btnText: 'Confirm',
              onTap: () {
                FirebaseFirestore.instance
                    .collection('users')
                    .doc(AuthMethod.uid)
                    .update({
                  'height': heightController.text,
                  'weight': weightController.text,
                });
                Navigator.of(context).pushNamed(AppRoutes.dietplanRoute);
              }),
          const Expanded(flex: 100, child: SizedBox()),
        ],
      ),
    );
  }
}
