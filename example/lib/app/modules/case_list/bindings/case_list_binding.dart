import 'package:get/get.dart';

import '../controllers/case_list_controller.dart';

class CaseListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CaseListController>(
      () => CaseListController(),
    );
  }
}
