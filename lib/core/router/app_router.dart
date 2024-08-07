import 'package:aedc_clinic/features/analysis/presentation/analysis_view.dart';
import 'package:aedc_clinic/features/commission/presentation/commission_view.dart';
import 'package:aedc_clinic/features/commission/presentation/screens/commission_details_screen.dart';
import 'package:aedc_clinic/features/examination/presentation/examination_view.dart';
import 'package:aedc_clinic/features/home/data/models/document_model.dart';
import 'package:aedc_clinic/features/home/presentation/screens/know_your_rights_details.dart';
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
  // Login
  static const kLogin = '/loginScreen';
  // Know Your Rights
  static const kKnowRightsReader = '/knowYourRightsReader';
  static const kKnowRightsDetails = '/knowYourRightsDetails';
  // Home
  static const kHomeView = '/homeView';
  // Choose Clinic
  static const kChooseClinic = '/chooseClinic';
  // Analysis
  static const kAnalysis = '/analysis';
  static const kCommission = '/commission';
  // Examination
  static const kExamination = '/examination';
  // Monthly Treatment
  static const kMonthlyTreatment = '/monthlyTreatment';
  // Teeth
  static const kTeeth = '/teeth';
  static const kTeethCommission = '/teethCommission';
  // XRay
  static const kXray = '/xray';
  // Commission
  static const kCommissionDetails = '/commissionDetails';

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
        builder: (context, state) =>
            KnowYourRightsPdfReader(DocumentModel.knowYourRights),
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
      GoRoute(
        path: kCommissionDetails,
        builder: (context, state) => const CommissionDetailsScreen(),
      ),
      GoRoute(
        path: kKnowRightsDetails,
        builder: (context, state) => const KnowYourRightsDetails(),
      ),
    ],
  );
}
