import 'package:get/get.dart';

import '../controllers/add_case_controller.dart';

class AddCaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddCaseController>(
      () => AddCaseController(),
    );
  }
}
