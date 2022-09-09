import 'dart:developer';

import 'package:chromosome_client/app/modules/case_list/views/case_list_view.dart';
import 'package:chromosome_client/app/modules/import_case/views/import_case_view.dart';
import 'package:chromosome_client/app/views/views/switch_user_dialog_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:native_opencv/native_opencv.dart';
import 'package:f_logs/f_logs.dart';

class HomeController extends GetxController {

  // late PermissionStatus _permissionStatus;

  String filePath = '/Users/zhousuhua/Desktop/flutterwindow/plugin/native_opencv/example/lib/util/test_0.png';
  List<Offset> points = [];

  @override
  void onInit() {
    super.onInit();
  }

  // void getPermission() async {
  //   _permissionStatus = await Permission.storage.status;
  //
  //   if (_permissionStatus != PermissionStatus.granted) {
  //     PermissionStatus permissionStatus= await Permission.storage.request();
  //     _permissionStatus = permissionStatus;
  //     update();
  //   }
  // }
  final topMenus = [
    '首页',
    '打开病例',
    '打印',
    '删除',
    '全选',
    '取消全选',
    '多选',
    '还原',
    '上一步',
    '下一步',
    '细胞审核',
    '细胞复查',
    '病例列表',
    '报告列表',
    '模板',
    '导入病例',
    '导出病例',
    '切换用户',
  ];

  String? topMenuIcons(String title) {
    String? icon;
    switch (title) {
      case '首页':
        icon = 'assets/images/index/shouye.png';
        break;
      case '打开病例':
        icon = 'assets/images/index/wenjian.png';
        break;
      case '打印':
        icon = 'assets/images/index/dayinji.png';
        break;
      case '删除':
        icon = 'assets/images/index/shanchu.png';
        break;
      case '全选':
        icon = 'assets/images/index/quanxuan.png';
        break;
      case '取消全选':
        icon = 'assets/images/index/qvxiaoquanxian.png';
        break;
      case '多选':
        icon = 'assets/images/index/duoxianbufenxuanzhong.png';
        break;
      case '还原':
        icon = 'assets/images/index/huanyuan.png';
        break;
      case '上一步':
        icon = 'assets/images/index/shangyibu.png';
        break;
      case '下一步':
        icon = 'assets/images/index/xiayibu.png';
        break;
      case '细胞审核':
        icon = 'assets/images/index/shenhe.png';
        break;
      case '细胞复查':
        icon = 'assets/images/index/fucha.png';
        break;
      case '病例列表':
        icon = 'assets/images/index/bingliliebiao.png';
        break;
      case '报告列表':
        icon = 'assets/images/index/baogaoliebiao.png';
        break;
      case '模板':
        icon = 'assets/images/index/moban.png';
        break;
      case '导入病例':
        icon = 'assets/images/index/daoru.png';
        break;
      case '导出病例':
        icon = 'assets/images/index/daochu.png';
        break;
      case '切换用户':
        icon = 'assets/images/index/qiehuanyonghu.png';
        break;
    }
    return icon;
  }

  topMenuEvents(String title) {
    switch (title) {
      case '导出病例':
        showDialog(
            context: Get.context!,
            builder: (context) => CaseListView(),
            barrierDismissible: false);
        break;
      case '导入病例':
        showDialog(
            context: Get.context!,
            builder: (context) => ImportCaseView(),
            barrierDismissible: false);
        break;
      case '切换用户':
        showDialog(
            context: Get.context!,
            builder: (context) => SwitchUserDialog(),
            barrierDismissible: false);
        break;
    }
  }

  final rightMenus = [
    '自动去噪',
    '增强',
    '对比度',
    '计数',
    '添加染色体',
    '画线添加染色体',
    '分割',
    '连接',
    '重叠',
    '自动核型',
    '画轴',
    '分析',
  ];

  String? rightMenuIcons(String title) {
    String? icon;
    switch (title) {
      case '自动去噪':
        icon = 'assets/images/analyse/自动去噪.png';
        break;
      case '增强':
        icon = 'assets/images/analyse/增强.png';
        break;
      case '对比度':
        icon = 'assets/images/analyse/对比度.png';
        break;
      case '计数':
        icon = 'assets/images/analyse/计数.png';
        break;
      case '添加染色体':
        icon = 'assets/images/analyse/添加染色体.png';
        break;
      case '画线添加染色体':
        icon = 'assets/images/analyse/手动添加染色体.png';
        break;
      case '分割':
        icon = 'assets/images/analyse/分割.png';
        break;
      case '连接':
        icon = 'assets/images/analyse/连接.png';
        break;
      case '重叠':
        icon = 'assets/images/analyse/重叠.png';
        break;
      case '自动核型':
        icon = 'assets/images/analyse/自动核型.png';
        break;
      case '画轴':
        icon = 'assets/images/analyse/画轴.png';
        break;
      case '分析':
        icon = 'assets/images/index/fenxibiaoqian.png';
        break;
    }
    return icon;
  }


  // onPanStart: ((details) => {
  //
  // log('1234556${details}')
  // }),
  // onPanUpdate: ((details) => {
  // log('onPanUpdate${details}')
  // }),
  // onPanEnd: ((details) => {
  // log('onPanUpdate${details}')
  // }),


  void onPanStart(DragStartDetails detail) {
    log('onPanUpdate${detail}');
    points.clear();
    points.add(detail.localPosition);
  }
  void onPanUpdate(DragUpdateDetails detail) {
    log('onPanUpdate${detail}');
    points.add(detail.localPosition);
    // 画图
  }
  onPanEnd(DragEndDetails detail) {
    log('onPanUpdate${detail}');
    // 画图
    points.clear();
  }

  rightMenuEvents(String title) {
    FLog.debug(
        className: "HomeController",
        methodName: "rightMenuIcons",
        text: title);

    switch (title) {
      case '自动去躁':
        {
          filePath = '/Users/zhousuhua/Desktop/flutterwindow/plugin/native_opencv/example/lib/util/test.png';
          update();
        }
        break;
      case '增强':
        {
          enhance(filePath, '/Users/zhousuhua/Desktop/flutterwindow/plugin/native_opencv/example/lib/util/test_20.png', 70);
        }
        break;
      case '对比度':
        {
          adjustBrightnessContrast(filePath, '/Users/zhousuhua/Desktop/flutterwindow/plugin/native_opencv/example/lib/util/test_30.png', 30, 50);
        }
        break;
      case '计数':
        break;
      case '添加染色体':
        break;
      case '画线添加染色体':

        break;
      case '分割':
        break;
      case '连接':
        break;
      case '重叠':
        break;
      case '自动核型':
        break;
      case '画轴':
        break;
      case '分析':
        break;
    }
  }
}
