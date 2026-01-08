import 'package:go_router/go_router.dart';
import 'package:project_deer/ui/GuidePage.dart';
import 'package:project_deer/ui/SplashPage.dart';

final mainRouter = GoRouter(
  routes: [
    GoRoute(path: "/", builder: (context, state) => SplashPage()),
    GoRoute(path: "/guide", builder: (context, state) => GuidePage()),
  ],
);

const String ROUTE_SPLASH = "/splash";
const String ROUTE_GUIDE = "/guide";
