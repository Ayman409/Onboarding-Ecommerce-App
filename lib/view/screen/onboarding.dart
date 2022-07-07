import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onboarding_controller.dart';
import '../widgets/onboarding/custombutton.dart';
import '../widgets/onboarding/customslider.dart';
import '../widgets/onboarding/dottcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            flex: 3,
            child: CustomSliderOnBoarding(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: const [
                CustomDotControllerOnBoarding(),
                Spacer(
                  flex: 2,
                ),
                OnBoardingCustomButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
