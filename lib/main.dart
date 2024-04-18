import 'package:electricharger/app/constants/app_cons.dart';
import 'package:electricharger/app/init/start/app_start.dart';
import 'package:electricharger/ui/view/splash/view/splash_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:grock/grock.dart';

void main() {
  AppStart.init();
  runApp(const ProviderScope(child: ElectrichargerApp()));
}

class ElectrichargerApp extends StatelessWidget {
  const ElectrichargerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: FToastBuilder(),
      scaffoldMessengerKey: Grock.scaffoldMessengerKey,
      debugShowCheckedModeBanner: kDebugMode,
      navigatorKey: Grock.navigationKey,
      title: AppCons.string.appName,
      home: const SplashView(),
    );
  }
}
