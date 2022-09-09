import 'package:get/get.dart';

import '../controllers/report_template_list_controller.dart';

class ReportTemplateListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReportTemplateListController>(
      () => ReportTemplateListController(),
    );
  }
}
