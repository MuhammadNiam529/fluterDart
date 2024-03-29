import 'package:flutter/material.dart';
import 'package:flutter_fic7_app/utils/color_resources.dart';
import 'package:flutter_fic7_app/utils/images.dart';
import 'package:flutter_fic7_app/pages/splash/widget/splash_painter.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashPage> {
  final GlobalKey<ScaffoldMessengerState> _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: ColorResources.getPrimary(context),
              child: CustomPaint(
                painter: SplashPainter(),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    Images.splashLogo,
                    height: 250.0,
                    fit: BoxFit.scaleDown,
                    width: 250.0,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
