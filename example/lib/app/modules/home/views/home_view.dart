import 'dart:developer';
import 'dart:io';

import 'package:chromosome_client/app/modules/personal_info/views/personal_info_view.dart';
import 'package:chromosome_client/app/modules/report_template_list/views/report_template_list_view.dart';
import 'package:chromosome_client/app/modules/user_list/views/user_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menubar/menubar.dart';
import 'package:f_logs/f_logs.dart';
import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    FLog.debug(
        className: "HomeController",
        methodName: "rightMenuIcons",
        text: '呵呵哈哈哈或');

    setApplicationMenu(<NativeSubmenu>[
      NativeSubmenu(label: '当前登录', children: [
        NativeMenuItem(
            label: '个人信息',
            shortcut: null,
            onSelected: () => showDialog(
                context: context, builder: (context) => PersonalInfoView()))
      ]),
      NativeSubmenu(label: '病例管理', children: [
        NativeMenuItem(label: '选择病例', shortcut: null, onSelected: () {}),
        NativeMenuItem(label: '病例列表', shortcut: null, onSelected: () {}),
        NativeMenuItem(label: '导入病例', shortcut: null, onSelected: () {}),
      ]),
      NativeSubmenu(label: '用户管理', children: [
        NativeMenuItem(
            label: '用户管理',
            shortcut: null,
            onSelected: () => showDialog(
                context: context, builder: (context) => UserListView())),
      ]),
      NativeSubmenu(label: '报告列表', children: [
        NativeMenuItem(
            label: '报告模板列表',
            shortcut: null,
            onSelected: () => showDialog(
                context: context,
                builder: (context) => ReportTemplateListView()))
      ]),
      NativeSubmenu(label: '设置', children: [
        NativeMenuItem(label: '切换文件夹', shortcut: null, onSelected: () {})
      ]),
    ]);

    return GetBuilder<HomeController>(builder: (logic) {
      return Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
              ),
              child: Wrap(
                children: logic.topMenus
                    .map(
                      (e) => IconButton(
                        splashColor: Colors.transparent,
                        splashRadius: null,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onPressed: () => logic.topMenuEvents(e),
                        icon: Image.asset(logic.topMenuIcons(e) ?? ''),
                        tooltip: e,
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onPanStart: (details) {
                          log('1234556${details}');
                          logic.onPanStart(details);
                        },
                        onPanUpdate: (details) {
                          log('onPanUpdate${details}');
                          logic.onPanUpdate(details);
                        },
                        onPanEnd: (details) {
                          log('onPanUpdate${details}');
                          logic.onPanEnd(details);
                        },
                        child: Image.file(File(logic.filePath)),
                      ),
                    )
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color(0xfff2f2f2),
                        border: Border.all(color: Colors.black12, width: 1)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: GridView.builder(
                            padding: EdgeInsets.all(10),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            itemBuilder: (context, index) => IconButton(
                              onPressed: () => logic
                                  .rightMenuEvents(logic.rightMenus[index]),
                              splashColor: Colors.transparent,
                              splashRadius: null,
                              highlightColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              padding: EdgeInsets.zero,
                              icon: Container(
                                padding: EdgeInsets.all(5),
                                color: Color(0xffe5e5e5),
                                child: Image.asset(
                                  logic.rightMenuIcons(
                                          logic.rightMenus[index]) ??
                                      '',
                                  width: 45,
                                  height: 45,
                                ),
                              ),
                              tooltip: logic.rightMenus[index],
                            ),
                            itemCount: logic.rightMenus.length,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 30),
                            Container(
                              margin: EdgeInsets.all(20),
                              width: 150,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Color(0xffe5e5e5),
                                border:
                                    Border.all(color: Colors.black12, width: 1),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xffe5e5e5),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black)),
                              child: Text(
                                '实例展示',
                              ),
                            ),
                            SizedBox(height: 60),
                            Text('染色体实例列表'),
                            SizedBox(height: 10),
                            Container(
                              width: 100,
                              height: 160,
                              decoration: BoxDecoration(
                                color: Color(0xffe5e5e5),
                                border:
                                    Border.all(color: Colors.black12, width: 1),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 8),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xffe5e5e5)),
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black),
                                      ),
                                      child: Text('保存'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
