import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/select_case_controller.dart';

class SelectCaseView extends GetView<SelectCaseController> {
  const SelectCaseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectCaseView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SelectCaseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
