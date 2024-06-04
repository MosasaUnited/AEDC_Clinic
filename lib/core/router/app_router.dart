import 'package:go_router/go_router.dart';

import '../../features/login/presentation/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

abstract class AppRouter {
  static const kLogin = '/loginScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
