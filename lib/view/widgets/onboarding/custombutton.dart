import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';

class OnBoardingCustomButton extends GetView<OnBoardingControllerImp> {
  const OnBoardingCustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: MaterialButton(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        color: AppColor.primaryColor,
        onPressed: () {
          controller.next();
        },
        child: const Text(
          'Continue',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
