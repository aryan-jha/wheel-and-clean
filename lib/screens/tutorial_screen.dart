import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                  const Text(
                    "Top-notch doorstep bike \n           and car care.",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Delivers top-notch doorstep bike and car care \n                    for ultimate convenience.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
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
                  const Text(
                    "Better service experience \n    than washing centers.",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      "    Offers a superior service experience compared to traditional washing centers.",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
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
                  const Text(
                    "Fully equipped for all \n       service needs.",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Fully equipped for all service needs, ensuring \n                     a seamless experience.",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
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
              padding: const EdgeInsets.only(bottom: 38, left: 33),
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
                                child: const Center(
                                    child: Text("Continue",
                                        style: TextStyle(
                                            color: Color(0XffFFFFFF),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700))),
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
                          child: const Center(
                              child: Text("Get Started",
                                  style: TextStyle(
                                      color: Color(0XffFFFFFF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700))),
                        ),
                      ],
                    ))
        ],
      ),
    );
  }
}
