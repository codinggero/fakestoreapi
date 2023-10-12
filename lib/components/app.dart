import 'package:flutter/material.dart';
import '/package.dart';

class App {
  late BuildContext context;
  App(BuildContext c) {
    context = c;
    orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      init(context);
    }
    if (orientation == Orientation.portrait) {
      init(context);
    }
  }
  static Orientation orientation = Orientation.portrait;
  static double width = 0.0;
  static double height = 0.0;
  static num column = 0;
  static double padding = 0.0;
  static double margin = 0.0;

  static String language = 'en';
  static String country = 'US';
  static String scripts = 'ltr';
  static String fontFamily = 'Urbanist';

  static Color seedColor = const Color(0xFFEFF1F4);
  static Color background = const Color(0xFFEFF1F4);

  static Color black = const Color(0xFF000000);
  static Color blackRussian = const Color(0xFF101F28);
  static Color dimGray = const Color(0xFF707070);
  static Color eclipse = const Color(0xFF3A3A45);
  static Color frostedMint = const Color(0xFFE4E2F2);
  static Color greatWhite = const Color(0xFFBBBBC4);
  static Color green = const Color(0xFF34A853);
  static Color kuroiBlack = const Color(0xFF06060A);
  static Color nandor = const Color(0xFF585862);
  static Color royalBlue = const Color(0xFF4285F4);
  static Color steelBlue = const Color(0xFF3A8EA5);
  static Color stormGrey = const Color(0xFF7B7B85);
  static Color white = const Color(0xFFFFFFFF);

  static String title = "";
  static String? initialRoute = Splash.routeName;
  static Widget? home = const Splash();
  static Transition? defaultTransition = Transition.native;

  static Color titleTextColor = const Color(0xff1d2635);
  static Color subTitleTextColor = const Color(0xff797878);

  static Color skyBlue = const Color(0xff2890c8);
  static Color lightBlue = const Color(0xff5c3dff);

  static Color orange = const Color(0xffE65829);
  static Color red = const Color(0xffF72804);

  static Color lightGrey = const Color(0xffE1E2E4);
  static Color grey = const Color(0xffA1A3A6);
  static Color darkgrey = const Color(0xff747F8F);

  static Color iconColor = const Color(0xffa8a09b);
  static Color yellowColor = const Color(0xfffbba01);

  static Color lightblack = const Color(0xff5F5F60);

  static OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: Color(0xFF424242)),
    gapPadding: 10,
  );

  static InputDecorationTheme? inputDecorationTheme = InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );

  static ThemeData theme = ThemeData(
    useMaterial3: true,
    fontFamily: fontFamily,
    primaryColor: white,
    cardTheme: CardTheme(color: white),
    textTheme: TextTheme(bodyLarge: TextStyle(color: black)),
    iconTheme: IconThemeData(color: iconColor),
    dividerColor: lightGrey,
    primaryTextTheme: TextTheme(
      bodyLarge: TextStyle(color: titleTextColor),
    ),
    scaffoldBackgroundColor: white,
    bottomAppBarTheme: BottomAppBarTheme(color: white),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    inputDecorationTheme: inputDecorationTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static List<GetPage<dynamic>>? getPages = Pages.init;

  static get initialBinding {
    return Binding();
  }

  static get translations {
    return Translation();
  }

  static get locale {
    return Locale(language, country);
  }

  static TextDirection get textDirection {
    TextDirection direction = TextDirection.ltr;
    if (scripts == "ltr") {
      direction = TextDirection.ltr;
    }
    if (scripts == "rtl") {
      direction = TextDirection.rtl;
    }

    return direction;
  }

  static console(dynamic message) {
    log('$message');
  }

  static double hp(double n) {
    return height * n / 100;
  }

  static double wp(double n) {
    return width * n / 100;
  }

  static double p(double v, double p) {
    return v * p / 100;
  }

  static init(context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarContrastEnforced: true,
        systemStatusBarContrastEnforced: true,
        statusBarColor: white,
        systemNavigationBarColor: white,
        systemNavigationBarDividerColor: white,
        statusBarBrightness:
            Platform.isAndroid ? Brightness.dark : Brightness.light,
        statusBarIconBrightness:
            Platform.isAndroid ? Brightness.dark : Brightness.light,
        systemNavigationBarIconBrightness:
            Platform.isAndroid ? Brightness.dark : Brightness.light,
      ),
    );

    if (width >= 0 && width <= 599) {
      column = 4;
      padding = 16;
      margin = 16;
    }

    if (width >= 600 && width <= 904) {
      column = 8;
      padding = 32;
      margin = 32;
    }

    if (width >= 905) {
      column = 12;
      padding = 32;
      margin = 32;
    }
  }
}
