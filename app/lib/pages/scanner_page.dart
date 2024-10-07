import 'dart:io';

import 'package:app/utilities/colors.dart';
import 'package:app/utilities/routes.dart';
import 'package:app/widgets/orange_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ScannerPage extends StatefulWidget {
  static File? scannedImage;

  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {

  Future pickimage(source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        return;
      }
      final imageTemp = File(image.path);
      setState(() => ScannerPage.scannedImage = imageTemp);
      Navigator.of(context).pushNamed(AppRoutes.imagepreviewRoute);
    } on PlatformException catch (e) {
      SnackBar(content: Text('Failed to pick image: $e'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          PositionedDirectional(
            top: 130,
            end: 120,
            child: SizedBox(
                height: 50,
                child: Image.asset('assets/images/abstract_orange1.png')),
          ),
          PositionedDirectional(
            top: 2.5,
            end: 2.5,
            child: SizedBox(
                height: 200,
                child: Image.asset('assets/images/abstract_orange2.png')),
          ),
          PositionedDirectional(
            bottom: 310,
            start: 2.5,
            child: SizedBox(
                height: 170,
                child: Image.asset('assets/images/abstract_orange3.png')),
          ),
          Column(
            children: [
              Expanded(flex: 75, child: SizedBox()),
              Row(children: [
                const Expanded(flex: 32, child: SizedBox()),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutes.homeRoute);
                    },
                    child: const Icon(
                      size: 30,
                      CupertinoIcons.back,
                    )),
                const Expanded(flex: 386, child: SizedBox())
              ]),
              Expanded(child: const SizedBox(), flex: 130),
              OrangeBtn(
                btnText: 'Select from Gallery',
                onTap: () => pickimage(ImageSource.gallery),
                width: 300,
                color: AppColor.brand100,
                textStyle: Theme.of(context).textTheme.labelMedium,
              ),
              Expanded(child: const SizedBox(), flex: 10),
              OrangeBtn(
                btnText: 'Take a picture',
                onTap: () => pickimage(ImageSource.camera),
                width: 300,
                color: AppColor.brand100,
                textStyle: Theme.of(context).textTheme.labelMedium,
              ),
              Expanded(child: const SizedBox(), flex: 180),
              Center(
                child: Container(
                  height: 250,
                  width: 375,
                  decoration: const BoxDecoration(
                    color: AppColor.neutral100,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x40000000),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 4))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 27,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Scan a Product',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Scan the back of the Product',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Make sure the ingredient list is',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            'visible',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Text('OR',
                          style: Theme.of(context).textTheme.headlineMedium),
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColor.neutral100,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0x40000000),
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: Offset(0, 4))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        child: OrangeBtn(
                          btnText: 'Enter Manually',
                          onTap: () {},
                          width: 345,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: const SizedBox(), flex: 50),
            ],
          ),
        ],
      ),
    );
  }
}
