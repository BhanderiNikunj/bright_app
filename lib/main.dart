import 'package:bright_app/Screen/Gita/View/GitaScreen.dart';
import 'package:bright_app/Screen/Show/View/ShowScreen.dart';
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
            page: () => GitaScreen(),
          ),
          GetPage(
            name: '/show',
            page: () => ShowScreen(),
          ),
        ],
      ),
    ),
  );
}
