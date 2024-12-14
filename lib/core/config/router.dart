import 'package:go_router/go_router.dart';
import 'package:spotify/features/auth_feature/presenation/views/auth_view.dart';
import 'package:spotify/features/splash_view_and_intro/presentation/choose_mode_page.dart';
import 'package:spotify/features/splash_view_and_intro/presentation/getting_started_page.dart';
import 'package:spotify/features/splash_view_and_intro/presentation/splash_view.dart';

const kGettingStartedPage = '/gettingStartedPage';
const kChooseModePage = "/chooseModePage";
const kAuthPage = "/authPage";

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kGettingStartedPage,
      builder: (context, state) => const GettingStartedView(),
    ),
    GoRoute(
      path: kChooseModePage,
      builder: (context, state) => const ChooseModePage(),
    ),
    GoRoute(
      path: kAuthPage,
      builder: (context, state) => const AuthView(),
    ),
  ],
);
