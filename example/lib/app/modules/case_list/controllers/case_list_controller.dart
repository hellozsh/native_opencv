import 'package:chromosome_client/app/modules/add_case/views/add_case_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CaseListController extends GetxController {
  final menus = [
    '添加病例',
    '编辑病例',
    '删除病例',
    '导出信息',
    '导出数据',
    '备份信息',
    '备份数据',
    '多选',
    '查看报告',
  ];

  menuEvents(String title) {
    switch (title) {
      case '添加病例':
        showDialog(
            context: Get.context!,
            builder: (context) => AddCaseView(),
            barrierDismissible: true);
    }
  }

  // final listItems = [
  //   '病例编号',
  //   '病例号',
  //   '姓名',
  //   '性别',
  //   '年龄',
  //   '处理人',
  //   '核型',
  //   '条码号',
  //   '诊断',
  //   '样本类型',
  // ];
}
