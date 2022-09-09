import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

import '../controllers/case_list_controller.dart';

class CaseListView extends Dialog {
  const CaseListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: GetBuilder<CaseListController>(
        init: CaseListController(),
        builder: (logic) {
          return SizedBox(
            width: 640,
            height: 440,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('病例列表'),
                        ),
                      ),
                      InkWell(
                          onTap: () => Get.back(),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.close),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Color(0xffdce2f0)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 90,
                          child: ListView.builder(
                            padding: EdgeInsets.only(top: 75),
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () => logic.menuEvents(logic.menus[index]),
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
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 10,
                                  runSpacing: 8,
                                  children: [
                                    // 病例编号
                                    ConditionNumber(),
                                    ConditionName(),
                                    ConditionGender(),
                                    ConditionNuclearType(),
                                    ConditionTime(),
                                    SizedBox(
                                      width: 60,
                                      height: 22,
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            '搜索',
                                            style: TextStyle(fontSize: 12),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Builder(builder: (context) {
                                final List<PlutoColumn> columns = [];
                                final List<PlutoRow> rows = [];
                                columns.addAll([
                                  PlutoColumn(
                                    title: '病例编号',
                                    field: 'conditionNumber',
                                    type: PlutoColumnType.text(),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                  PlutoColumn(
                                    title: '病例号',
                                    field: 'conditionSerialNumber',
                                    type: PlutoColumnType.text(),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                  PlutoColumn(
                                    title: '姓名',
                                    field: 'conditionName',
                                    type: PlutoColumnType.text(),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                  PlutoColumn(
                                    title: '性别',
                                    field: 'conditionGender',
                                    type: PlutoColumnType.text(),
                                    cellPadding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    titlePadding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                  PlutoColumn(
                                    title: '年龄',
                                    field: 'conditionAge',
                                    type: PlutoColumnType.text(),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                  PlutoColumn(
                                    title: '处理人',
                                    field: 'conditionHandler',
                                    type: PlutoColumnType.text(),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                  PlutoColumn(
                                    title: '核型',
                                    field: 'conditionNuclearType',
                                    type: PlutoColumnType.text(),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                  PlutoColumn(
                                    title: '条码号',
                                    field: 'conditionBarcode',
                                    type: PlutoColumnType.text(),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                  PlutoColumn(
                                    title: '诊断',
                                    field: 'conditionDiagnosis',
                                    type: PlutoColumnType.text(),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                  PlutoColumn(
                                    title: '样本类型',
                                    field: 'conditionSampleType',
                                    type: PlutoColumnType.text(),
                                    readOnly: true,
                                    enableColumnDrag: false,
                                    enableSorting: false,
                                    enableContextMenu: false,
                                    enableDropToResize: false,
                                    enableFilterMenuItem: false,
                                    enableHideColumnMenuItem: false,
                                    enableSetColumnsMenuItem: false,
                                    enableEditingMode: false,
                                  ),
                                ]);
                                rows.addAll([
                                  PlutoRow(cells: {
                                    'conditionNumber':
                                        PlutoCell(value: '12345678'),
                                    'conditionSerialNumber':
                                        PlutoCell(value: '12345678'),
                                    'conditionName':
                                        PlutoCell(value: '12345678'),
                                    'conditionGender':
                                        PlutoCell(value: '12345678'),
                                    'conditionAge':
                                        PlutoCell(value: '12345678'),
                                    'conditionHandler':
                                        PlutoCell(value: '12345678'),
                                    'conditionNuclearType':
                                        PlutoCell(value: '12345678'),
                                    'conditionBarcode':
                                        PlutoCell(value: '12345678'),
                                    'conditionDiagnosis':
                                        PlutoCell(value: '12345678'),
                                    'conditionSampleType':
                                        PlutoCell(value: '12345678'),
                                  })
                                ]);
                                return SizedBox(
                                  width: 530,
                                  height: 280,
                                  child: PlutoGrid(
                                    columns: columns,
                                    rows: rows,
                                    configuration: PlutoGridConfiguration(
                                      style: PlutoGridStyleConfig(
                                        rowHeight: 22,
                                        columnHeight: 22,
                                        columnTextStyle:
                                            TextStyle(fontSize: 12),
                                        cellTextStyle: TextStyle(fontSize: 12),
                                      ),
                                      columnSize: PlutoGridColumnSizeConfig(
                                          autoSizeMode:
                                              PlutoAutoSizeMode.equal),
                                    ),
                                  ),
                                );
                              }),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 40.0, top: 10),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('共有 %s 条')),
                              ),
                            ],
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

class ConditionNumber extends StatelessWidget {
  const ConditionNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            width: 22,
            height: 22,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
            )),
        Text('病例编号'),
        SizedBox(width: 4),
        SizedBox(
          width: 60,
          child: TextField(
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            ),
          ),
        ),
        Text(
          ' - ',
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          width: 60,
          child: TextField(
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            ),
          ),
        ),
      ],
    );
  }
}

class ConditionName extends StatelessWidget {
  const ConditionName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            width: 22,
            height: 22,
            child: Checkbox(value: false, onChanged: (value) {})),
        Text('病人姓名'),
        SizedBox(width: 4),
        SizedBox(
          width: 74,
          child: TextField(
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            ),
          ),
        ),
      ],
    );
  }
}

class ConditionGender extends StatelessWidget {
  const ConditionGender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            width: 22,
            height: 22,
            child: Checkbox(value: false, onChanged: (value) {})),
        Text('病人性别'),
        SizedBox(width: 8),
        SizedBox(
          width: 40,
          child: PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('男'), onTap: () {}),
                PopupMenuItem(child: Text('女'), onTap: () {}),
              ];
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '男',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 14,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ConditionNuclearType extends StatelessWidget {
  const ConditionNuclearType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            width: 22,
            height: 22,
            child: Checkbox(value: false, onChanged: (value) {})),
        Text('核型'),
        SizedBox(width: 4),
        SizedBox(
          width: 60,
          child: TextField(
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            ),
          ),
        ),
      ],
    );
  }
}

class ConditionTime extends StatelessWidget {
  const ConditionTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
            width: 22,
            height: 22,
            child: Checkbox(value: false, onChanged: (value) {})),
        Text('时间'),
        SizedBox(width: 4),
        SizedBox(
          width: 80,
          child: TextField(
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            ),
          ),
        ),
        Text(' - ', style: TextStyle(fontSize: 12)),
        SizedBox(
          width: 80,
          child: TextField(
            style: TextStyle(fontSize: 14),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            ),
          ),
        ),
      ],
    );
  }
}
