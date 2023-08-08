import 'package:bright_app/Screen/Gita/Controllor/GitaControllor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GitaScreen extends StatefulWidget {
  const GitaScreen({super.key});

  @override
  State<GitaScreen> createState() => _GitaScreenState();
}

class _GitaScreenState extends State<GitaScreen> {
  GitaControllor gitaControllor = Get.put(
    GitaControllor(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: gitaControllor.gitaApi(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  "${snapshot.error}",
                ),
              );
            } else if (snapshot.hasData) {
              gitaControllor.dataList = snapshot.data;
              return ListView.builder(
                itemCount: gitaControllor.dataList!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed(
                        '/show',
                        arguments: gitaControllor.dataList![index],
                      );
                    },
                    child: ListTile(
                      title: Text("${gitaControllor.dataList![index].name}"),
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
