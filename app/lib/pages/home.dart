import 'package:app/services/auth_services.dart';
import 'package:app/utilities/colors.dart';
import 'package:app/utilities/routes.dart';
import 'package:app/widgets/orange_btn.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: MediaQuery.sizeOf(context).height * 0.475,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [AppColor.brand500, AppColor.brand300],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [.65, 1]),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0, 4))
                      ],
                    )),
                Image.asset(
                  'assets/images/home_stack.png',
                  height: 403,
                  opacity: const AlwaysStoppedAnimation<double>(.2),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context)
                              .pushNamed(AppRoutes.profilepageRoute),
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColor.neutral700,
                            backgroundImage: NetworkImage(
                                'https://www.elevenforum.com/data/attachments/82/82529-ade63e4209709292183f654907b168f5.jpg'),
                          ),
                        ),
                        const SizedBox(
                          width: 230,
                        ),
                        const EndDrawerButton(),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 32,
                        ),
                        Text(
                          textAlign: TextAlign.left,
                          'Nutritional Today',
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    fontSize: 32,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 29,
                            ),
                            Container(
                              height: 100,
                              width: 300,
                              decoration: const BoxDecoration(
                                color: AppColor.neutral100,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x40000000),
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                      offset: Offset(2, 4))
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 28,
                                      ),
                                      Text(
                                        'Calories',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      const SizedBox(
                                        width: 58,
                                      ),
                                      Text(
                                        '1500 of 2000 cal',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 268,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x40000000),
                                            blurRadius: 4,
                                            spreadRadius: 0,
                                            offset: Offset(0, 4))
                                      ],
                                    ),
                                    child: const LinearProgressIndicator(
                                      backgroundColor: AppColor.success100,
                                      valueColor: AlwaysStoppedAnimation(
                                          AppColor.success400),
                                      minHeight: 20,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      value: .5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 29,
                            ),
                            Container(
                              height: 100,
                              width: 300,
                              decoration: const BoxDecoration(
                                color: AppColor.neutral100,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x40000000),
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                      offset: Offset(2, 4))
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 28,
                                      ),
                                      Text(
                                        'Carbohydrates',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      const SizedBox(
                                        width: 35,
                                      ),
                                      Text(
                                        '25 of 100g',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 268,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x40000000),
                                            blurRadius: 4,
                                            spreadRadius: 0,
                                            offset: Offset(0, 4))
                                      ],
                                    ),
                                    child: const LinearProgressIndicator(
                                      backgroundColor: AppColor.success100,
                                      valueColor: AlwaysStoppedAnimation(
                                          AppColor.success400),
                                      minHeight: 20,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      value: .25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 29,
                            ),
                            Container(
                              height: 100,
                              width: 300,
                              decoration: const BoxDecoration(
                                color: AppColor.neutral100,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x40000000),
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                      offset: Offset(2, 4))
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 28,
                                      ),
                                      Text(
                                        'Proteins',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      const SizedBox(
                                        width: 100,
                                      ),
                                      Text(
                                        '40 of 70g',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 268,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x40000000),
                                            blurRadius: 4,
                                            spreadRadius: 0,
                                            offset: Offset(0, 4))
                                      ],
                                    ),
                                    child: const LinearProgressIndicator(
                                      backgroundColor: AppColor.success100,
                                      valueColor: AlwaysStoppedAnimation(
                                          AppColor.success400),
                                      minHeight: 20,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      value: .7,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 29,
                            ),
                            Container(
                              height: 100,
                              width: 300,
                              decoration: const BoxDecoration(
                                color: AppColor.neutral100,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0x40000000),
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                      offset: Offset(2, 4))
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 28,
                                      ),
                                      Text(
                                        'Calories',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      const SizedBox(
                                        width: 58,
                                      ),
                                      Text(
                                        '1500 of 2000 cal',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 268,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x40000000),
                                            blurRadius: 4,
                                            spreadRadius: 0,
                                            offset: Offset(0, 4))
                                      ],
                                    ),
                                    child: const LinearProgressIndicator(
                                      backgroundColor: AppColor.success100,
                                      valueColor: AlwaysStoppedAnimation(
                                          AppColor.success400),
                                      minHeight: 20,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      value: .5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(flex: 21, child: SizedBox()),
            Row(
              children: [
                const Expanded(flex: 21, child: SizedBox()),
                Expanded(
                  flex: 387,
                  child: Container(
                    height: 106,
                    decoration: const BoxDecoration(
                      color: AppColor.neutral100,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(2, 4))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Row(
                      children: [
                        const Expanded(flex: 21, child: SizedBox()),
                        Column(
                          children: [
                            const Expanded(flex: 40, child: SizedBox()),
                            Text(
                              'Get some Diet Tips !',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(fontSize: 20),
                            ),
                            InkWell(
                              onTap: () {},
                              child: SizedBox(
                                width: 165,
                                child: Text(
                                  'Learn More',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = .3
                                      ..color = AppColor.brand500,
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(flex: 31, child: SizedBox()),
                          ],
                        ),
                        const Expanded(flex: 75, child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: SizedBox(
                              height: 90,
                              child:
                                  Image.asset('assets/images/home_food.png')),
                        ),
                        const Expanded(flex: 11, child: SizedBox()),
                      ],
                    ),
                  ),
                ),
                const Expanded(flex: 21, child: SizedBox()),
              ],
            ),
            const Expanded(flex: 51, child: SizedBox()),

            Row(
              children: [
                const Expanded(flex: 30, child: SizedBox()),
                Text(
                  'Recently Scanned Products',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const Expanded(flex: 64, child: SizedBox()),
              ],
            ),
            const Expanded(flex: 16, child: SizedBox()),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 0, 8),
                    child: Container(
                      height: 145,
                      width: 230,
                      decoration: const BoxDecoration(
                        color: AppColor.neutral100,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(2, 4))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(21, 35, 22, 30),
                            child: Image.asset('assets/images/doritos.png'),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 11,
                              ),
                              SizedBox(
                                width: 115,
                                height: 25,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  'Doritos',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontSize: 20),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: SizedBox(
                                  width: 115,
                                  height: 15,
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    'Calories',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x40000000),
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: Offset(0, 4))
                                    ],
                                  ),
                                  width: 102,
                                  child: const LinearProgressIndicator(
                                    backgroundColor: AppColor.warning100,
                                    valueColor: AlwaysStoppedAnimation(
                                        AppColor.warning400),
                                    minHeight: 8,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    value: .5,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 115,
                                height: 24,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    'Carbohydrates',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x40000000),
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: Offset(0, 4))
                                    ],
                                  ),
                                  width: 102,
                                  child: const LinearProgressIndicator(
                                    backgroundColor: AppColor.error100,
                                    valueColor: AlwaysStoppedAnimation(
                                        AppColor.error400),
                                    minHeight: 8,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    value: .75,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 2.5,
                              ),
                              SizedBox(
                                width: 115,
                                child: Text(
                                  'More...',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColor.brand500,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = .3
                                      ..color = AppColor.brand500,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 0, 8),
                    child: Container(
                      height: 145,
                      width: 230,
                      decoration: const BoxDecoration(
                        color: AppColor.neutral100,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(2, 4))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 55, 10, 45),
                            child: Image.asset('assets/images/toblerone.png'),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 11,
                              ),
                              SizedBox(
                                width: 115,
                                height: 25,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  'Toblerone',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontSize: 20),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: SizedBox(
                                  width: 115,
                                  height: 15,
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    'Calories',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x40000000),
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: Offset(0, 4))
                                    ],
                                  ),
                                  width: 102,
                                  child: const LinearProgressIndicator(
                                    backgroundColor: AppColor.warning100,
                                    valueColor: AlwaysStoppedAnimation(
                                        AppColor.warning400),
                                    minHeight: 8,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    value: .5,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 115,
                                height: 24,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    'Sugars',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x40000000),
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: Offset(0, 4))
                                    ],
                                  ),
                                  width: 102,
                                  child: const LinearProgressIndicator(
                                    backgroundColor: AppColor.error100,
                                    valueColor: AlwaysStoppedAnimation(
                                        AppColor.error400),
                                    minHeight: 8,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    value: .75,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 2.5,
                              ),
                              SizedBox(
                                width: 115,
                                child: Text(
                                  'More...',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColor.brand500,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = .3
                                      ..color = AppColor.brand500,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 0, 8),
                    child: Container(
                      height: 145,
                      width: 230,
                      decoration: const BoxDecoration(
                        color: AppColor.neutral100,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(2, 4))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 35, 25, 30),
                            child: Image.asset('assets/images/cheetos.png'),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 11,
                              ),
                              SizedBox(
                                width: 115,
                                height: 25,
                                child: Text(
                                  textAlign: TextAlign.end,
                                  'Cheetos',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontSize: 20),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: SizedBox(
                                  width: 115,
                                  height: 15,
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    'Calories',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x40000000),
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: Offset(0, 4))
                                    ],
                                  ),
                                  width: 102,
                                  child: const LinearProgressIndicator(
                                    backgroundColor: AppColor.success100,
                                    valueColor: AlwaysStoppedAnimation(
                                        AppColor.success400),
                                    minHeight: 8,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    value: .4,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 115,
                                height: 24,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    'Carbohydrates',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x40000000),
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          offset: Offset(0, 4))
                                    ],
                                  ),
                                  width: 102,
                                  child: const LinearProgressIndicator(
                                    backgroundColor: AppColor.warning100,
                                    valueColor: AlwaysStoppedAnimation(
                                        AppColor.warning400),
                                    minHeight: 8,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    value: .75,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 2.5,
                              ),
                              SizedBox(
                                width: 115,
                                child: Text(
                                  'More...',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColor.brand500,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = .3
                                      ..color = AppColor.brand500,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 0, 8),
                    child: Container(
                      height: 145,
                      width: 230,
                      decoration: const BoxDecoration(
                        color: AppColor.neutral100,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(2, 4))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/see_more_overlay.png',
                          ),
                          Center(
                            child: Text(
                              'See more...',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.brand500,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = .3
                                  ..color = AppColor.brand500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(flex: 49, child: SizedBox()),

            // Don't put any widgets Below this. NAV BAR
            //                                     |
            //                                     |
            //                                     v
            BottomNavigationBar(elevation: 0, items: [
              BottomNavigationBarItem(
                  icon: Row(
                    children: [
                      const SizedBox(
                        height: 0,
                        width: 60,
                      ),
                      Column(
                        children: [
                          Text(
                            'Home',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(fontSize: 20),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: const BoxDecoration(
                                color: AppColor.brand500,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          )
                        ],
                      )
                    ],
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(AppRoutes.scannerRoute),
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          color: AppColor.brand500),
                      child: Padding(
                        padding: const EdgeInsets.all(12.5),
                        child: (Image.asset('assets/images/scanner.png')),
                      ),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.profilepageRoute),
                    child: Row(
                      children: [
                        const SizedBox(
                          height: 0,
                          width: 20,
                        ),
                        Text(
                          'Profile',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 20,
                                  color: const Color(0xFF6B564D),
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  label: ''),
            ]),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            const Expanded(flex: 1, child: SizedBox()),
            Center(
              child: OrangeBtn(
                  btnText: 'Log-out',
                  onTap: () {
                    AuthMethod().signOut();
                  }),
            ),
            const Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
    );
  }
}
