import 'package:chromosome_client/app/modules/change_password/views/change_password_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalInfoView extends Dialog {
  const PersonalInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Align(
                        alignment: Alignment.center, child: Text('个人信息'))),
                InkWell(
                  onTap: () => Get.back(),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.close),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xfff0f0f0),
              ),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          '工号',
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white,
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          '姓名',
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white,
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          '密码',
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                          width: 100,
                          child: TextButton(
                            onPressed: () => showDialog(
                              context: context,
                              builder: (context) => ChangePasswordView(),
                            ),
                            child: Text('修改密码'),
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          '性别',
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              Radio(
                                  value: 'MALE',
                                  groupValue: 'Gender',
                                  onChanged: (value) {}),
                              Text('男'),
                              SizedBox(width: 5),
                              Radio(
                                  value: 'FEMALE',
                                  groupValue: 'Gender',
                                  onChanged: (value) {}),
                              Text('女'),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('清除'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('OK'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
