import 'package:chromosome_client/app/modules/user_list/controllers/user_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';

class UserListView extends Dialog {
  const UserListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: GetBuilder<UserListController>(
          init: UserListController(),
          builder: (logic) {
            return SizedBox(
              width: 640,
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
                              child: Text('用户管理'))),
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
                      decoration: BoxDecoration(color: Color(0xffdce2f0)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 90,
                            child: ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.only(top: 50),
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {},
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 180,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            filled: true,
                                            fillColor: Colors.white,
                                            isDense: true,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 8, vertical: 8),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          '搜索',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                      SizedBox(width: 40),
                                    ],
                                  ),
                                ),
                                Builder(builder: (context) {
                                  final List<PlutoColumn> columns = [];
                                  final List<PlutoRow> rows = [];
                                  columns.addAll([
                                    PlutoColumn(
                                      title: '工号',
                                      field: 'jobNumber',
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
                                      field: 'name',
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
                                      field: 'gender',
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
                                      title: '权限',
                                      field: 'permission',
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
                                      title: '授权时间',
                                      field: 'authorizedTime',
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
                                      'jobNumber': PlutoCell(value: '12345678'),
                                      'name': PlutoCell(value: '12345678'),
                                      'gender': PlutoCell(value: '12345678'),
                                      'permission':
                                          PlutoCell(value: '12345678'),
                                      'authorizedTime':
                                          PlutoCell(value: '12345678'),
                                    })
                                  ]);
                                  return SizedBox(
                                    width: 520,
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
                                          cellTextStyle:
                                              TextStyle(fontSize: 12),
                                        ),
                                        columnSize: PlutoGridColumnSizeConfig(
                                            autoSizeMode:
                                                PlutoAutoSizeMode.equal),
                                      ),
                                    ),
                                  );
                                }),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 40.0, top: 10),
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
          }),
    );
  }
}
