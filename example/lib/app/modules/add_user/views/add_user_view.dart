import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_user_controller.dart';

class AddUserView extends GetView<AddUserController> {
  const AddUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddUserView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddUserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
