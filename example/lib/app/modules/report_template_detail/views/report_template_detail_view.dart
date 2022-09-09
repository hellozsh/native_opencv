import 'package:chromosome_client/app/modules/report_template_detail/controllers/report_template_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportTemplateDetailView extends Dialog {
  const ReportTemplateDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: GetBuilder<ReportTemplateDetailController>(
        init: ReportTemplateDetailController(),
        builder: (logic) {
          return Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Align(
                          alignment: Alignment.center, child: Text('报告模板详情'))),
                  InkWell(
                    onTap: () => Get.back(),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.close),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10.0),
                    child: Row(
                      children: [
                        Text('标题: '),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 6),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10.0),
                    child: Row(
                      children: [
                        Text('备注: '),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 6),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(child: Text('Hello World!')),
                      SizedBox(
                        width: 260,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Row(
                            children: [
                              ['结果', '新增信息'].contains(logic.menus[index])
                                  ? SizedBox(width: 25, height: 25)
                                  : SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: Checkbox(
                                          value: false, onChanged: (value) {})),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  '${logic.menus[index]}: ',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                width: 120,
                                child: TextField(
                                  style: TextStyle(fontSize: 12),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 6),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                          itemCount: logic.menus.length,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('保存'),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
