import 'package:bright_app/Screen/Gita/Model/GitaModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {

  GitaModel g1 = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("${g1.chapterSummary}",),
          ],
        ),
      ),
    );
  }
}
