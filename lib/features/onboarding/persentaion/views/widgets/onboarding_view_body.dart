import 'package:bisku/constants.dart';
import 'package:bisku/core/utils/app_router.dart';
import 'package:bisku/core/utils/styles.dart';
import 'package:bisku/features/onboarding/persentaion/manger/models/onboarding_model.dart';
import 'package:bisku/features/onboarding/persentaion/views/widgets/onboarding_view_item.dart';
import 'package:bisku/features/onboarding/persentaion/views/widgets/page_indecator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  bool isLast = false;
  PageController controller = PageController();

  final List<OnBoardingModel> onboardingModels = const [
    OnBoardingModel(
      image: 'assets/images/boarding 1.jpg',
      title: 'No more burden of bags !',
      supTitle:
          'Now, through our application, you can browse all the grocery stores near you',
    ),
    OnBoardingModel(
      image: 'assets/images/boarding 2.jpg',
      title: 'select and order grocery online',
      supTitle: 'Browse more than one store and compare prices',
    ),
    OnBoardingModel(
      image:
          'assets/images/Cabo Grocery Girls, cabo groceries, grocery delivery in cabo.jpg',
      title: 'Fast doorstep delivery',
      supTitle: 'Fast delivery within minutes',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
          onPageChanged: (index) {
            if (index == onboardingModels.length - 1) {
              setState(() {
                isLast = true;
              });
            } else {
              setState(() {
                isLast = false;
              });
            }
          },
          controller: controller,
          itemBuilder: ((context, index) =>
              OnBoardingViewItem(model: onboardingModels[index])),
          itemCount: onboardingModels.length,
        ),
        const SizedBox(
          height: 20,
        ),
        Positioned(
          left: 30,
          bottom: 60,
          child: PageIndector(
              controller: controller, onBoardingItem: onboardingModels),
        ),
        Positioned(
          right: 30,
          bottom: 40,
          child: SizedBox(
            width: 100,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              onPressed: () async {
                if (isLast == true) {
                  GoRouter.of(context).go(AppRouter.kGetNotifiedView);
                } else {
                  setState(() {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.easeOutSine);
                  });
                }
              },
              child: isLast
                  ? Text(
                      'Get start',
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    )
                  : Text(
                      'Next',
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
            ),
          ),
        ),
      ],
    ));
  }
}
