import 'package:bright_app/Utiles/ApiHelper.dart';
import 'package:get/get.dart';

class GitaControllor extends GetxController {

  List? dataList;

  Future<List> gitaApi() {
    return ApiHelper.apiHelper.gitaApi();
  }
}
