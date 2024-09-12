import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wheel_and_clean/screens/login_screen.dart';
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
            scrollBehavior: ScrollBehavior(),
            onPageChanged: onChanged,
            controller: pageController,
            children: [
              Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.elliptical(
                                  MediaQuery.of(context).size.width, 100.0))),
                      child: ClipPath(
                        clipper: BottomCurveClipper(),
                        child: Image.asset(
                            fit: BoxFit.cover,
                            height: 500,
                            'assets/screensAsset/tut1.png'),
                      )),
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
                      height: MediaQuery.of(context).size.height * 0.55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.elliptical(
                                MediaQuery.of(context).size.width, 100.0)),
                      ),
                      child: ClipPath(
                        clipper: BottomCurveClipper(),
                        child: Image.asset(
                            fit: BoxFit.cover,
                            height: 500,
                            'assets/screensAsset/tut2.png'),
                      )),
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
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(
                              MediaQuery.of(context).size.width, 100.0)),
                    ),
                    child: ClipPath(
                      clipper: BottomCurveClipper(),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        height: 500,
                        'assets/screensAsset/tut3.png',
                        width: double.infinity,
                      ),
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
              child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 180),
                  child: (currentPage < 2)
                      ? Column(
                          key: Key('1'),
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () => pageController.jumpToPage(2),
                                    child: Container(
                                      // key: Key('1'),
                                      height: 58,
                                      width: 159.5,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF1F0FF),
                                          borderRadius:
                                              BorderRadius.circular(60)),
                                      child: const Center(
                                          child: Text("Skip",
                                              style: TextStyle(
                                                  color: Color(0xff5546FF),
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.w700))),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 27,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      pageController.nextPage(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOut);
                                    },
                                    child: Container(
                                      height: 58,
                                      width: 159.5,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff5546FF),
                                          borderRadius:
                                              BorderRadius.circular(60)),
                                      child: Center(
                                          child: Text("Continue",
                                              style: blueButtonFontStyling)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          key: Key('2'),
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Loginscreen()));
                                },
                                child: Container(
                                  // key: Key('2'),
                                  height: 58,
                                  width: 335,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff5546FF),
                                      borderRadius: BorderRadius.circular(60)),
                                  child: Center(
                                      child: Text("Get Started",
                                          style: blueButtonFontStyling)),
                                ),
                              ),
                            ),
                          ],
                        )))
        ],
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0);

    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height - 50);

    path.quadraticBezierTo(
      size.width / 2,
      size.height + 50,
      0,
      size.height - 50,
    );

    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
