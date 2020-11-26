import 'package:sinabung/views/screens/splash.dart';
import 'package:sinabung/views/screens/onboarding.dart';
import 'package:sinabung/views/screens/auth.dart';

Object appRoutes = {
  "/splash": (context) => SplashScreenPage(),
  "/onboarding": (context) => OnBoardingScreen(),
  "/home": (context) => SplashScreenPage(),
  "/auth": (context) => AuthPage(),
};