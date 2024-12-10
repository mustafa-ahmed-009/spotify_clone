import 'package:go_router/go_router.dart';
import 'package:spotify/features/splash_view/splash_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
  ],
);