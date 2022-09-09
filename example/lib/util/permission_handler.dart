import 'dart:math';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  static Future<bool> handleWith(Permission permission,
      {bool showTip = true}) async {
    if (await permission.request().isGranted ||
        await permission.request().isLimited) {
      return true;
    }

    if (await permission.isPermanentlyDenied ||
        await permission.isRestricted ||
        await permission.isDenied) {
      if (showTip) {
        // 失败
      }
    }
    return false;
  }
}

class PermissionAlertDialog extends StatelessWidget {
  final Permission permission;

  const PermissionAlertDialog({Key? key, required this.permission}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String content = '';
    if (this.permission is PermissionWithService) {
      if (this.permission == Permission.location) {
        content = '请前往系统设置打开定位权限';
      }
    }

    if (this.permission is Permission) {
      if (this.permission == Permission.photos) {
        content = '请前往系统设置打开相册权限';
      } else if (this.permission == Permission.camera) {
        content = '请前往系统设置打开相机权限';
      } else if (this.permission == Permission.microphone) {
        content = '请前往系统设置打开麦克风权限';
      } else if (this.permission == Permission.storage) {
        content = '请前往系统设置打开存储权限';
      } else {
        content = '请前往系统设置打开该权限';
      }
    }

    return AlertDialog(
      title: Text('提示'),
      content: Text(content),
      backgroundColor: Colors.white,
      elevation: 24,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      actions: <Widget>[
        TextButton(
          child: Text('知道了'),
          onPressed: () {
            // XRouter.pop(context);
          },
        ),
      ],
    );
  }
}
