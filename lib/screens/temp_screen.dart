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
              height: 500,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  bottom:
                      Radius.elliptical(MediaQuery.of(context).size.width, 100),
                ),
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
