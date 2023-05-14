import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kick_ball/helpers/styles_manager.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class Validation {
  static const String required = 'عفواً،هذا الحقل مطلوب';
  static const String minLength = ' عدد الأحرف المطلوب لا تقل عن ';
  static const String maxLength = ' عدد الأحرف المطلوب لا تزيد عن ';
  static const String match = 'الصيغة المدخلة لرقم الجوال غير صحيحة';
}

class AppAssets {
  AppAssets._();

  static const String _imagesPath = 'assets/images';

  /// Images
  static const String loginImage = '$_imagesPath/login_image.png';
  static const String appStoreImage = '$_imagesPath/app-store.png';
  static const String playStoreImage = '$_imagesPath/play-store.png';

  static const String facebookImage = '$_imagesPath/facebook.png';
  static const String heroImage = '$_imagesPath/hero_image.png';
  static const String instagramImage = '$_imagesPath/instagram.png';
  static const String logoImage = '$_imagesPath/logo.png';
  static const String twitter = '$_imagesPath/twitter.png';
  static const String userImage = '$_imagesPath/user_image.png';

  static const String playground1 = '$_imagesPath/playground-1.png';
  static const String playground2 = '$_imagesPath/playground-2.png';
  static const String playground3 = '$_imagesPath/playground-3.png';
  static const String playground4 = '$_imagesPath/playground-4.png';
  static const String playground5 = '$_imagesPath/playground-5.png';
  static const String playground6 = '$_imagesPath/playground-6.png';

  static const String accepted = '$_imagesPath/accepted.png';
  static const String declined = '$_imagesPath/declined.png';
  static const String filterIcon = '$_imagesPath/filter_icon.png';

  static const String dailyReservations = '$_imagesPath/daily_reservations.png';
  static const String fieldsReservations =
      '$_imagesPath/fields_reservations.png';
  static const String goal = '$_imagesPath/goal.png';
  static const String maleUser = '$_imagesPath/male_user.png';
  static const String plus = '$_imagesPath/plus.png';
  static const String userShield = '$_imagesPath/user_shield.png';
  static const String clock = '$_imagesPath/clock.png';
}

class AppStrings {
  AppStrings._();
  static const String welcomeBack = "Welcome Back!";
  static const String enterEmail = "Enter your email";
  static const String enterPassword = "Enter your password";
  static const String confirmPassword = "Confirm password";
  static const String enterName = "Enter your full name";
  static const String forgetPassword = "Forget Password?";
  static const String alreadyHaveAccount = "Already Have Account ?";
  static const String createAccount = "Create account";

  static const String signIn = "Sign in";
  static const String signUp = "Sign up";
  static const String logIn = "Log in";

  static const String enterVerifyCode = "Enter Verification Code";
  static const String didntReceiveCode = "Didn't receive code";
  static const String send = "Send";
  static const String resend = "Resend";
  static const String confirm = "Confirm";
  static const String addNewPassword = "Add new password";

  static const String register = "Register";
  static const String dontHaveAccount = "Don't Have Account ?";
  static const String letsHelpYou =
      "Let's help you to find the nearest available football field for you.";
  static const String welcomeMessage = "Welcome to KickBall";

  static const String home = "Home";
  static const String about = "About";
  static const String search = "Search";
  static const String heroTitle = "Get field Reservation easily";
  static const String heroMessage =
      "you can book football field through the application at the right time for you.";
  static const String getStart = "Get Start";
}

class AppColors {
  /// Used
  static const primary = Color(0xFF4CB050);
  static const secondary = Color(0xffFAFAFA);
  static const grey = Color(0xFFD9D9D9);
  static const darkGrey = Color(0xFF696969);
}

class AppStyles {}

class AppThemes {
  static final appTheme = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary, // header background color
      onPrimary: Colors.white, // header text color
      onSurface: AppColors.primary, // body text color
    ),
    //Text Theme
    textTheme: TextTheme(
      //Used
      displayLarge:
          getRegularTextStyle(color: Colors.black, fontSize: FontSize.s58),
      displayMedium:
          getRegularTextStyle(color: AppColors.primary, fontSize: FontSize.s46),
      displaySmall:
          getRegularTextStyle(color: AppColors.primary, fontSize: FontSize.s36),

      // used
      headlineLarge:
          getSemiBoldTextStyle(color: Colors.black, fontSize: FontSize.s32),

      // Used
      headlineMedium:
          getSemiBoldTextStyle(color: Colors.black, fontSize: FontSize.s28),

      // Used
      headlineSmall: getSemiBoldTextStyle(
          color: AppColors.darkGrey, fontSize: FontSize.s24),
      // Used
      titleLarge:
          getRegularTextStyle(color: Colors.black, fontSize: FontSize.s22),

      titleMedium:
          getBoldTextStyle(color: AppColors.darkGrey, fontSize: FontSize.s16),

      titleSmall:
          getBoldTextStyle(color: AppColors.primary, fontSize: FontSize.s14),

      labelLarge: getBoldTextStyle(color: Colors.black, fontSize: FontSize.s14),

      labelMedium:
          getMediumTextStyle(color: AppColors.darkGrey, fontSize: FontSize.s14),

      labelSmall:
          getRegularTextStyle(color: Colors.black, fontSize: FontSize.s14),

      bodyLarge: getBoldTextStyle(color: Colors.black, fontSize: FontSize.s16),

      bodyMedium:
          getSemiBoldTextStyle(color: Colors.black, fontSize: FontSize.s14),

      bodySmall: getRegularTextStyle(
          color: AppColors.darkGrey, fontSize: FontSize.s12),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle:
              getSemiBoldTextStyle(color: Colors.white, fontSize: FontSize.s24),
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.w))),
    ),
    // Form Field Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      isDense: true,

      fillColor: Colors.white,
      // content padding
      contentPadding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
      // hint style
      hintStyle:
          getRegularTextStyle(color: Colors.black, fontSize: FontSize.s20),
      // label style
      labelStyle:
          getMediumTextStyle(color: Colors.black, fontSize: FontSize.s20),
      // error style
      errorStyle: getRegularTextStyle(color: Colors.red),
      // enabled border
      enabledBorder: _getOutlineInputBorder(color: Colors.black),
      // focused border
      focusedBorder: _getOutlineInputBorder(color: AppColors.primary),
      // error border
      errorBorder: _getOutlineInputBorder(color: Colors.red),
      // focused error border
      focusedErrorBorder: _getOutlineInputBorder(color: AppColors.primary),
    ),
  );
}

OutlineInputBorder _getOutlineInputBorder({required Color color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(8)),
  );
}
