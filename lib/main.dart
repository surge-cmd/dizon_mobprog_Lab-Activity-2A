import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dizon_mobprog/screens/home_screen.dart';
import 'package:dizon_mobprog/screens/newsfeed_screen.dart';
import 'package:dizon_mobprog/screens/notification_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Facebook",
          locale: const Locale('en', 'US'),
          supportedLocales: const [
            Locale('en', 'US'),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          initialRoute: "/home",
          routes: {
            "/newsfeed": (context) => const NewsfeedScreen(),
            "/notifications": (context) => const NotificationScreen(),
            "/home": (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}
