import 'package:go_router/go_router.dart';
import 'package:spotify/features/splash_view_and_intro/choose_mode_page.dart';
import 'package:spotify/features/splash_view_and_intro/getting_started_page.dart';
import 'package:spotify/features/splash_view_and_intro/splash_view.dart';

const kGettingStartedPage = '/gettingStartedPage';
const kChooseModePage = "/chooseModePage";

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
  ],
);
