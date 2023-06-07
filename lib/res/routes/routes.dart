import 'package:get/get.dart';
import 'package:mvvc/res/routes/routes_name.dart';
import 'package:mvvc/view/SplashScreen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => SplashScreen(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade)
      ];
}
