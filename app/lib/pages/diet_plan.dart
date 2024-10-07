import 'package:app/services/auth_services.dart';
import 'package:app/utilities/colors.dart';
import 'package:app/utilities/routes.dart';
import 'package:app/widgets/orange_btn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DietPlanPage extends StatefulWidget {
  const DietPlanPage({super.key});

  @override
  State<DietPlanPage> createState() => _DietPlanPageState();
}

class _DietPlanPageState extends State<DietPlanPage> {
  final TextEditingController heightController = TextEditingController();

  final TextEditingController weightController = TextEditingController();

  double currentsliderValue = 0;

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
            'Your Goal?',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
              height: 350, child: Image.asset('assets/images/diet_plan.png')),
          const Expanded(flex: 127, child: SizedBox()),
          Row(
            children: [
              const Expanded(flex: 60, child: SizedBox()),
              Text('Cut',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 20)),
              const Expanded(flex: 227, child: SizedBox()),
              Text('Bulk',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 20)),
              const Expanded(flex: 60, child: SizedBox()),
            ],
          ),
          Slider(
            value: currentsliderValue,
            onChanged: (value) {
              setState(() {
                currentsliderValue = value;
              });
            },
            onChangeEnd: (value) {
              FirebaseFirestore.instance
                  .collection('users')
                  .doc(AuthMethod.uid)
                  .update({
                'diet-plan': ((value / 10).round()) * 10,
              });
            },
            activeColor: AppColor.brand100,
            inactiveColor: AppColor.brand100,
            thumbColor: AppColor.brand500,
            min: -100,
            max: 100,
            // divisions: 100,
            allowedInteraction: SliderInteraction.slideThumb,
          ),
          Text('Intensity', style: Theme.of(context).textTheme.bodyMedium),
          const Expanded(flex: 84, child: SizedBox()),
          OrangeBtn(
              btnText: 'Confirm',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.homeRoute);
              }),
          const Expanded(flex: 84, child: SizedBox()),
        ],
      ),
    );
  }
}
