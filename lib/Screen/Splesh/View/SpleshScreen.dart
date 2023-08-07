import 'package:bright_app/Utiles/ApiHelper.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    super.initState();

    ApiHelper.apiHelper.readStudent();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset(
            "Assets/Images/bright.png",
            height: 200.sp,
          ),
        ),
      ),
    );
  }
}
