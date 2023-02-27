import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/string_manager.dart';
import 'package:kirala/presentation/view/introduce_yourself/introduce_yourself_view.dart';
import 'package:kirala/presentation/view/main/main_view.dart';
import 'package:kirala/presentation/view/splash_view/splash_view.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String mainRoute = '/main';
  static const String storeDetailRoute = '/storeDetail';
}

class RouteManager {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const IntroduceYourselfView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(
                child: Text(AppStrings.oppsss),
              ),
            ));
  }
}
