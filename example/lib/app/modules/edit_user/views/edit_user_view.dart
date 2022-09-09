import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditUserView extends Dialog {
  const EditUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child:
                      Align(alignment: Alignment.center, child: Text('编辑用户'))),
              InkWell(
                onTap: () => Get.back(),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.close),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
