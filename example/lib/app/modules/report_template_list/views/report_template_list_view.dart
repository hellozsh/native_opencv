import 'package:chromosome_client/app/modules/report_template_list/controllers/report_template_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportTemplateListView extends Dialog {
  const ReportTemplateListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: GetBuilder<ReportTemplateListController>(
        init: ReportTemplateListController(),
        builder: (logic) {
          return SizedBox(
            width: 310,
            height: 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('报告模板列表'))),
                    InkWell(
                      onTap: () => Get.back(),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(Icons.close),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xffdce2f0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          height: 300,
                          margin: EdgeInsets.fromLTRB(20, 40, 0, 20),
                          decoration: BoxDecoration(
                            color: Color(0xfff2f2f2),
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        padding: EdgeInsets.all(4),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5))),
                                        child: Text('报告名称')),
                                  ),
                                ],
                              ),
                              ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => Container(),
                                  separatorBuilder: (context, index) =>
                                      Divider(),
                                  itemCount: 1),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 90,
                          child: ListView.builder(
                            padding: EdgeInsets.only(top: 50),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () =>
                                  logic.menusEvents(logic.menus[index]),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.circular(4)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2.5),
                                child: Text(
                                  logic.menus[index],
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                            itemCount: logic.menus.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
