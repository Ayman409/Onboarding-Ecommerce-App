import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardinglist.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            onBoardinglist[i].title!,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 70,
          ),
          Image.asset(
            onBoardinglist[i].image!,
            height: 230,
            width: 200,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            onBoardinglist[i].body!,
            textAlign: TextAlign.center,
            style: const TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          )
        ],
      ),
    );
  }
}
