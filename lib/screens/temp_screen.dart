import 'package:flutter/material.dart';

class TempScreen extends StatefulWidget {
  const TempScreen({super.key});

  @override
  State<TempScreen> createState() => _TempScreenState();
}

class _TempScreenState extends State<TempScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.55,
              // width: double.infinity,
              height: 500,
              width: 4000,

              child: ClipPath(
                clipper: BottomCurveClipper(),
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/screensAsset/tut1.png')),
              ),
            ),
          )
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
