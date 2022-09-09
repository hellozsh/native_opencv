import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchUserDialog extends AlertDialog {
  const SwitchUserDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('系统提示'),
      content: Row(
        children: [
          Icon(
            Icons.notification_important,
            color: Colors.red,
          ),
          SizedBox(width: 10),
          Text('切换用户？'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: Text('Yes'),
        ),
        TextButton(
          onPressed: () => Get.back(),
          child: Text('No'),
        ),
      ],
    );
  }
}
