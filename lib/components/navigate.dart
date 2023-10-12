import 'package:flutter/material.dart';

class Navigate {
  static next(BuildContext context, Widget child) {
    final route = PageRouteBuilder(
      pageBuilder: (context, anaimation, anaimation2) => child,
      transitionsBuilder: (context, anaimation, anaimation2, page) {
        var begin = const Offset(1, 0);
        var end = const Offset(0, 0);
        var tween = Tween(begin: begin, end: end);
        var carve = CurvedAnimation(
          parent: anaimation,
          curve: Curves.linearToEaseOut,
        );
        return SlideTransition(
          position: tween.animate(carve),
          child: page,
        );
      },
    );
    Navigator.of(context).push(route);
  }

  static back(BuildContext context, Widget child) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) => child,
      transitionsBuilder: (context, animation1, animation2, page) {
        var begin = const Offset(-1, 0);
        var end = const Offset(0, 0);
        var tween = Tween(begin: begin, end: end);
        var curved =
            CurvedAnimation(parent: animation1, curve: Curves.linearToEaseOut);
        return SlideTransition(
          position: tween.animate(curved),
          child: page,
        );
      },
    );
    Navigator.of(context).push(route);
  }

  static aligment(BuildContext context, Widget child) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) => child,
      transitionsBuilder: (context, animation1, animation2, page) {
        return Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: SizeTransition(
            sizeFactor: animation1,
            child: page,
          ),
        );
      },
    );
    Navigator.of(context).push(route);
  }

  static void popAndPushNamed(BuildContext context, String route,
      {Object? arguments}) {
    Navigator.of(context).popAndPushNamed(route, arguments: arguments);
  }

  static void pushNamed(BuildContext context, String route,
      {Object? arguments}) {
    Navigator.of(context).pushNamed(route, arguments: arguments);
  }
}
