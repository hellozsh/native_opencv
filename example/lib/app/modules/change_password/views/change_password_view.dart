import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordView extends Dialog {
  const ChangePasswordView({Key? key}) : super(key: key);
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
                        alignment: Alignment.center, child: Text('修改密码'))),
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
                          '旧密码',
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
                          '新密码',
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
                          '确定密码',
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
