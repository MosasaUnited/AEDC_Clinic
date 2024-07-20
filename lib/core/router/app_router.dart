import 'package:aedc_clinic/features/analysis/presentation/analysis_view.dart';
import 'package:aedc_clinic/features/commission/presentation/commission_view.dart';
import 'package:aedc_clinic/features/examination/presentation/examination_view.dart';
import 'package:aedc_clinic/features/monthly_treatment/presentation/monthly_treatment_view.dart';
import 'package:aedc_clinic/features/teeth/presentation/teeth_view.dart';
import 'package:aedc_clinic/features/x-ray/presentation/x-ray_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/choose_clinic/presentation/choose_clinic_view.dart';
import '../../features/home/home.dart';
import '../../features/home/presentation/widgets/know_your_rights_reader.dart';
import '../../features/login/presentation/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/teeth/presentation/screens/teeth_commission_screen.dart';

abstract class AppRouter {
  static const kLogin = '/loginScreen';
  static const kKnowRightsReader = '/knowYourRightsReader';
  static const kHomeView = '/homeView';
  static const kChooseClinic = '/chooseClinic';
  static const kAnalysis = '/analysis';
  static const kCommission = '/commission';
  static const kExamination = '/examination';
  static const kMonthlyTreatment = '/monthlyTreatment';
  static const kTeeth = '/teeth';
  static const kXray = '/xray';
  static const kCommissionDetails = '/commissionDetails';
  static const kTeethCommission = '/teethCommission';

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
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kChooseClinic,
        builder: (context, state) => const ChooseClinicView(),
      ),
      GoRoute(
        path: kAnalysis,
        builder: (context, state) => const AnalysisView(),
      ),
      GoRoute(
        path: kCommission,
        builder: (context, state) => const CommissionView(),
      ),
      GoRoute(
        path: kExamination,
        builder: (context, state) => const ExaminationView(),
      ),
      GoRoute(
        path: kMonthlyTreatment,
        builder: (context, state) => const MonthlyTreatmentView(),
      ),
      GoRoute(
        path: kTeeth,
        builder: (context, state) => const TeethView(),
      ),
      GoRoute(
        path: kXray,
        builder: (context, state) => const XrayView(),
      ),
      GoRoute(
        path: kTeethCommission,
        builder: (context, state) => const TeethCommissionScreen(),
      ),
    ],
  );
}
