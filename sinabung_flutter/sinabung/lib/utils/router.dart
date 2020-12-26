import 'package:sinabung/views/screens/splash.dart';
import 'package:sinabung/views/screens/onboarding.dart';
import 'package:sinabung/views/screens/auth.dart';
import 'package:sinabung/views/screens/home.dart';

Object appRoutes = {
  "/splash": (context) => SplashScreen(),
  "/onboarding": (context) => OnBoardingScreen(),
  "/home": (context) => HomeScreen(),
  "/auth": (context) => AuthScreen(),
};
