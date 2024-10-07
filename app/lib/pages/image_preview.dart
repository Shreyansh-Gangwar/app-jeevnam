import 'dart:io';

import 'package:app/utilities/colors.dart';
import 'package:app/utilities/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/scanner_page.dart';

class ImagePreviewPage extends StatelessWidget {
  const ImagePreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final File? image = ScannerPage.scannedImage;
    return Material(
      color: AppColor.neutral900,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(),
            flex: 20,
          ),
          Text(
            'Continue with this picture?',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Expanded(
            child: SizedBox(),
            flex: 10,
          ),
          Container(
            height: 450,
            child: image != null
                ? Image.file(image)
                : Image.asset('assets/images/404.png'),
          ),
          Expanded(
            child: SizedBox(),
            flex: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 45,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.scannerRoute);
                },
                icon: Icon(CupertinoIcons.xmark),
                color: AppColor.neutral100,
                iconSize: 30,
                splashColor: AppColor.neutral100,
              ),
              Expanded(
                child: SizedBox(),
                flex: 1,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.checkmark_alt),
                color: AppColor.neutral100,
                iconSize: 35,
                splashColor: AppColor.neutral100,
              ),
              SizedBox(
                width: 45,
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
            flex: 20,
          ),
        ],
      ),
    );
  }
}
