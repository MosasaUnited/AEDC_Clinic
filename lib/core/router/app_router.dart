import 'package:go_router/go_router.dart';

import '../../features/home/presentation/widgets/know_your_rights_reader.dart';
import '../../features/login/presentation/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

abstract class AppRouter {
  static const kLogin = '/loginScreen';
  static const kKnowRightsReader = '/knowYourRightsReader';
  static const kHomeView = '/homeView';

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
      GoRoute(
        path: kKnowRightsReader,
        builder: (context, state) => KnowYourRightsPdfReader(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
