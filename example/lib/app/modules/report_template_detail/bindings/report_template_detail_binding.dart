import 'package:get/get.dart';

import '../controllers/report_template_detail_controller.dart';

class ReportTemplateDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReportTemplateDetailController>(
      () => ReportTemplateDetailController(),
    );
  }
}
