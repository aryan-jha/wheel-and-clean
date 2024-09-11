import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wheel_and_clean/themes/text_style.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  int currentPage = 0;

  final pageController = PageController();

  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: onChanged,
            controller: pageController,
            children: [
              Column(
                children: [
                  Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(600),
                              bottomRight: Radius.circular(600))),
                      child: Image.asset(
                          fit: BoxFit.cover,
                          height: 500,
                          'assets/screensAsset/tut1.png')),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Top-notch doorstep bike \n           and car care.",
                    style: tutorialHeadlineFont,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                      "Delivers top-notch doorstep bike and car care \n                    for ultimate convenience.",
                      style: tutorialDescriptionFont),
                ],
              ),
              Column(
                children: [
                  Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                      child: Image.asset(
                          fit: BoxFit.cover,
                          height: 500,
                          'assets/screensAsset/tut2.png')),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Better service experience \n    than washing centers.",
                    style: tutorialHeadlineFont,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                        "    Offers a superior service experience \ncompared to traditional washing centers.",
                        style: tutorialDescriptionFont),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      height: 500,
                      'assets/screensAsset/tut3.png',
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Fully equipped for all \n       service needs.",
                      style: tutorialHeadlineFont),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                        "Fully equipped for all service needs, ensuring \n                     a seamless experience.",
                        style: tutorialDescriptionFont),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SmoothPageIndicator(
                    effect: const ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 14,
                        activeDotColor: Color(0xff5546FF),
                        dotColor: Color(0xffEEEEEE)),
                    controller: pageController,
                    count: 3,
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                  // bottom: 38,
                  // left: 33,
                  horizontal: 20,
                  vertical: 30),
              child: (currentPage < 2)
                  ? Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () => pageController.jumpToPage(2),
                              child: Container(
                                height: 58,
                                width: 159.5,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF1F0FF),
                                    borderRadius: BorderRadius.circular(60)),
                                child: const Center(
                                    child: Text("Skip",
                                        style: TextStyle(
                                            color: Color(0xff5546FF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700))),
                              ),
                            ),
                            const SizedBox(
                              width: 27,
                            ),
                            InkWell(
                              onTap: () {
                                pageController.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                              },
                              child: Container(
                                height: 58,
                                width: 159.5,
                                decoration: BoxDecoration(
                                    color: const Color(0xff5546FF),
                                    borderRadius: BorderRadius.circular(60)),
                                child: Center(
                                    child: Text("Continue",
                                        style: blueButtonFontStyling)),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 58,
                          width: 335,
                          decoration: BoxDecoration(
                              color: const Color(0xff5546FF),
                              borderRadius: BorderRadius.circular(60)),
                          child: Center(
                              child: Text("Get Started",
                                  style: blueButtonFontStyling)),
                        ),
                      ],
                    ))
        ],
      ),
    );
  }
}
