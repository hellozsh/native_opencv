import 'package:chromosome_client/app/modules/report_template_detail/views/report_template_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportTemplateListController extends GetxController {
  final menus = [
    '查看',
    '增加',
    '删除',
  ];

  menusEvents(String title) {
    switch (title) {
      case '查看':
        break;
      case '增加':
        showDialog(
            context: Get.context!,
            builder: (context) => ReportTemplateDetailView());
        break;
      case '删除':
        break;
    }
  }
}
