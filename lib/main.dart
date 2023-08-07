import 'package:bright_app/Screen/Splesh/View/SpleshScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        getPages: [
          GetPage(
            name: '/',
            page: () => SpleshScreen(),
          ),
        ],
      ),
    ),
  );
}
