import 'package:get/get.dart';
import 'package:kick_ball/modules/dashboard/home/view/admin_home.dart';
import 'package:kick_ball/modules/dashboard/users/view/owners_view.dart';
import 'package:kick_ball/modules/dashboard/users/view/users_view.dart';
import 'package:kick_ball/modules/user/auth/views/auth_view.dart';
import 'package:kick_ball/modules/user/auth/views/email_reset_view.dart';
import 'package:kick_ball/modules/user/auth/views/new_password_view.dart';
import 'package:kick_ball/modules/user/auth/views/verify_code_view.dart';
import 'package:kick_ball/modules/user/home/binding/home_binding.dart';
import 'package:kick_ball/modules/user/home/views/home_view.dart';
import 'package:kick_ball/modules/user/home/views/map_view.dart';
import 'package:kick_ball/modules/user/playground_details/binding/playground_details_binding.dart';
import 'package:kick_ball/modules/user/playground_details/view/payment_approved.dart';
import 'package:kick_ball/modules/user/playground_details/view/payment_declined.dart';
import 'package:kick_ball/modules/user/playground_details/view/playground_details_view.dart';
import 'package:kick_ball/modules/user/profile/view/profile_view.dart';

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
  static const mapPageUrl = '/map_page';

  // [Admin]
  static const adminHomePageUrl = '/admin_Home_page';
  static const adminOwnersPageUrl = '/admin_owners_page';
  static const adminUsersPageUrl = '/admin_users_page';
  static const adminAddPlaygroundPageUrl = '/admin_add_playground_page';
  static const adminPlaygroundsPageUrl = '/admin_playgrounds_page';
}

class AppPages {
  static const initial = AppRoutes.homeURL;
  static List<GetPage> pages = [
    GetPage(
        name: initial, page: () => const HomeView(), bindings: [HomeBinding()]),
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
        binding: PlaygroundDetailsBinding()),
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
    GetPage(
      name: AppRoutes.adminHomePageUrl,
      page: () => const AdminHome(),
    ),
    GetPage(
      name: AppRoutes.adminUsersPageUrl,
      page: () => const UsersView(),
    ),
    GetPage(
      name: AppRoutes.adminOwnersPageUrl,
      page: () => const OwnersView(),
    ),
    GetPage(
      name: AppRoutes.mapPageUrl,
      page: () => MapView(),
    ),
  ];
}
