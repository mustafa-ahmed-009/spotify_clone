import 'package:go_router/go_router.dart';
import 'package:spotify/features/auth_feature/presenation/views/auth_mode_view.dart';
import 'package:spotify/features/auth_feature/presenation/views/sign_in_view/sign_in_view.dart';
import 'package:spotify/features/auth_feature/presenation/views/sign_up_view/sign_up_view.dart';
import 'package:spotify/features/splash_view_and_intro/presentation/choose_mode_page.dart';
import 'package:spotify/features/splash_view_and_intro/presentation/getting_started_page.dart';
import 'package:spotify/features/splash_view_and_intro/presentation/splash_view.dart';

const kGettingStartedPage = '/gettingStartedPage';
const kChooseModePage = "/chooseModePage";
const kAuthModePage = "/authPage";
const kSignInPage = "/signIn";
const kSignUpPage = "/signUp";

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
      path: kAuthModePage,
      builder: (context, state) => const AuthView(),
    ),
    GoRoute(
      path: kSignInPage,
      builder: (context, state) => const SignInView(),
    ),
        GoRoute(
      path: kSignUpPage,
      builder: (context, state) => const SignUpView(),
    ),
  ],
);
