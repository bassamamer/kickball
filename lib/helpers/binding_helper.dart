import 'package:get/get.dart';
import 'package:kick_ball/modules/auth/views/auth_view.dart';
import 'package:kick_ball/modules/auth/views/email_reset_view.dart';
import 'package:kick_ball/modules/auth/views/new_password_view.dart';
import 'package:kick_ball/modules/auth/views/verify_code_view.dart';
import 'package:kick_ball/modules/home/views/home_view.dart';
import 'package:kick_ball/modules/playground_details/view/payment_approved.dart';
import 'package:kick_ball/modules/playground_details/view/payment_declined.dart';
import 'package:kick_ball/modules/playground_details/view/playground_details_view.dart';
import 'package:kick_ball/modules/profile/view/profile_view.dart';

class AppRoutes {
  static const homeURL = '/home';
  static const authPageURL = '/auth_page';
  static const emailResetPageURL = '/email_reset_page';
  static const verifyCodePageURL = '/verify_code_page';
  static const newPasswordPageURL = '/new_password_page';
  static const playGroundDetailsPageURL = '/playground_details_page';
  static const approvePageURL = '/approve_page';
  static const declinePageURL = '/decline_page';
  static const userPageURL = '/user_page';
}

class AppPages {
  static const initial = AppRoutes.homeURL;
  static List<GetPage> pages = [
    GetPage(
      name: initial,
      page: () => const HomeView(),
    ),
    GetPage(
      name: AppRoutes.authPageURL,
      page: () => const AuthView(),
    ),
    GetPage(
      name: AppRoutes.emailResetPageURL,
      page: () => EmailResetView(),
    ),
    GetPage(
      name: AppRoutes.verifyCodePageURL,
      page: () => VerifyCodeView(),
    ),
    GetPage(
      name: AppRoutes.newPasswordPageURL,
      page: () => NewPasswordView(),
    ),
    GetPage(
      name: AppRoutes.playGroundDetailsPageURL,
      page: () => const PlayGroundDetailsView(),
    ),
    GetPage(
      name: AppRoutes.approvePageURL,
      page: () => const PaymentApproved(),
    ),
    GetPage(
      name: AppRoutes.declinePageURL,
      page: () => const PaymentDeclined(),
    ),
    GetPage(
      name: AppRoutes.userPageURL,
      page: () => const ProfileView(),
    ),
  ];
}
