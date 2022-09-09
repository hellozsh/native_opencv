import 'package:get/get.dart';

import '../controllers/import_case_controller.dart';

class ImportCaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImportCaseController>(
      () => ImportCaseController(),
    );
  }
}
