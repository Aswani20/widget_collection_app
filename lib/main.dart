import 'package:flutter/material.dart';
import 'package:template_app/collapsible_sidebar/sidebar_screen.dart';
import 'package:template_app/core/route/app_routes.dart';
import 'package:template_app/core/route/routes.dart';
import 'home_screen.dart';
import 'onboarding/on_boarding_screen.dart';

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Template App",
      locale: Locale("en"),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: AppRoutes.homeScreen,
      routes: {
        AppRoutes.onBoardingScreen: (context) => OnBoardingPage(),
        AppRoutes.homeScreen: (context) => HomeScreen(),
        AppRoutes.sideBarScreen: (context) => SidebarScreen(),
      },
    );
  }
}

