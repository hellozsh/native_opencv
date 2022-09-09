import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImportCaseView extends Dialog {
  const ImportCaseView({Key? key}) : super(key: key);
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
                        alignment: Alignment.center, child: Text('导入病例'))),
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
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('导入病例信息'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('导入病例'),
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
