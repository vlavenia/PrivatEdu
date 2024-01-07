import 'package:privatedu/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:privatedu/module/detailedu/view/detailedu.dart';
import 'package:privatedu/state_util.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'privatedu',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          // SplashView()
          home: SplashView(),
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
