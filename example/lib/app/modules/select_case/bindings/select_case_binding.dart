import 'package:get/get.dart';

import '../controllers/select_case_controller.dart';

class SelectCaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectCaseController>(
      () => SelectCaseController(),
    );
  }
}
