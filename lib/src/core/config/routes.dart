import 'package:capsule/src/features/auth/otp/otp_binding.dart';
import 'package:capsule/src/features/auth/otp/otp_screen.dart';
import 'package:capsule/src/features/auth/profile_info/profile_info_binding.dart';
import 'package:capsule/src/features/auth/profile_info/profile_info_screen.dart';
import 'package:capsule/src/features/auth/signup/signup_binding.dart';
import 'package:capsule/src/features/auth/signup/signup_screen.dart';
import 'package:capsule/src/features/home/home/home_screen.dart';
import 'package:capsule/src/features/home/navbar/navbar.dart';
import 'package:capsule/src/features/home/navbar/navbar_binding.dart';
import 'package:capsule/src/features/quiz/quiz_binding.dart';
import 'package:capsule/src/features/quiz/quiz_screen.dart';
import 'package:capsule/src/features/resullt_analysis/result_analysis_binding.dart';
import 'package:capsule/src/features/resullt_analysis/result_analysis_screen.dart';
import 'package:capsule/src/features/review_answere/review_answer_binding.dart';
import 'package:capsule/src/features/review_answere/review_answer_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../features/auth/login/login_binding.dart';
import '../../features/auth/login/login_screen.dart';
import '../../features/home/home/home_binding.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String otp = '/otp';
  static const String profileInfo = '/profileinfo';
  static const String navBar = '/navbar';
  static const String home = '/home';
  static const String signature = '/signature';
  static const String resultAnalysis = '/resultAnalysis';
  static const String reviewAnswer = '/reviewAnswer';
  static const String quiz = '/quiz';

  static String getLoginRoute() => login;

  static String getSignUpRoute() => signup;

  static String getOtpRoute() => otp;

  static String getProfileInfoRoute() => profileInfo;

  static String getNavBarRoute() => navBar;

  static String getHomeRoute() => home;

  static String getSignatureRoute() => signature;

  static String getResultRoute() => resultAnalysis;

  static String getReviewAnswerRoute() => reviewAnswer;

  static String getQuizRoute() => quiz;

  static generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return GetPageRoute(settings: settings, routeName: getLoginRoute(), page: () => LoginScreen());
      case signup:
        return GetPageRoute(settings: settings, routeName: getSignUpRoute(), page: () => SignupScreen());
      case otp:
        return GetPageRoute(settings: settings, routeName: getOtpRoute(), page: () => const OtpScreen());
      case profileInfo:
        return GetPageRoute(settings: settings, routeName: getProfileInfoRoute(), page: () => ProfileInfoScreen());
      case navBar:
        return GetPageRoute(settings: settings, routeName: getNavBarRoute(), page: () => const NavBarScreen());
      case home:
        return GetPageRoute(settings: settings, routeName: getHomeRoute(), page: () => const HomeScreen());
      case resultAnalysis:
        return GetPageRoute(settings: settings, routeName: getResultRoute(), page: () => const ResultAnalysisScreen());
      case reviewAnswer:
        return GetPageRoute(
            settings: settings, routeName: getReviewAnswerRoute(), page: () => const ResultAnalysisScreen());
      case quiz:
        return GetPageRoute(settings: settings, routeName: getQuizRoute(), page: () => const QuizScreen());
      default:
        return null;
    }
  }

  static getPages() => [
        GetPage(
          name: login,
          page: () => LoginScreen(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: signup,
          page: () => SignupScreen(),
          binding: SignupBindings(),
        ),
        GetPage(
          name: otp,
          page: () => const OtpScreen(),
          binding: OtpBinding(),
        ),
        GetPage(
          name: profileInfo,
          page: () => ProfileInfoScreen(),
          binding: ProfileInfoBinding(),
        ),
        GetPage(
          name: navBar,
          page: () => const NavBarScreen(),
          binding: NavBarBinding(),
        ),
        GetPage(
          name: home,
          page: () => const HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: resultAnalysis,
          page: () => const ResultAnalysisScreen(),
          binding: ResultBinding(),
        ),
        GetPage(
          name: reviewAnswer,
          page: () => ReviewAnswerScreen(),
          binding: ReviewAnswerBinding(),
        ),
        GetPage(
          name: quiz,
          page: () => const QuizScreen(),
          binding: QuizBinding(),
        ),
      ];
}
