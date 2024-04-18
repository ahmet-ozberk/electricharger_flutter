import 'package:electricharger/assets.dart';
import 'package:electricharger/ui/view/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then(
      (value) => 1.waitSec(
        () => Grock.toRemove(
          const HomeView(),
          type: NavType.fade,
          duration: const Duration(seconds: 1),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.image.imSplashPNG,
          width: context.width,
          height: context.height,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
