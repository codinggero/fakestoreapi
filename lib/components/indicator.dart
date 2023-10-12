import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/package.dart';

class Indicator {
  static bool state = false;

  static Future call(BuildContext context, bool response) async {
    if (response == true && state == false) {
      state = true;
      return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
          child: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: CupertinoActivityIndicator(),
            ),
          ),
        ),
      );
    } else if (response == false && state == true) {
      state = false;
      Navigator.of(context).pop();
    }
  }

  static onStart(BuildContext context,
      {String hint = 'Processing', List<Widget>? actions}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            backgroundColor: Colors.white,
            content: Row(
              children: [
                const CupertinoActivityIndicator(),
                const SizedBox(width: 16),
                Text(
                  hint,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.center,
                ),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      '...',
                      textStyle: const TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                      ),
                      textAlign: TextAlign.center,
                      speed: const Duration(milliseconds: 500),
                    ),
                  ],
                ),
              ],
            ),
            actions: actions,
            //  [
            //   ElevatedButton(
            //     onPressed: () => Navigator.of(context).pop(),
            //     child: Text('cancel'),
            //   )
            // ],
          ),
        );
      },
    );
  }

  static onStop(BuildContext context) {
    Navigator.pop(context);
  }

  static onError(
    BuildContext context,
    dynamic error, {
    bool? pop = true,
    void Function()? onPressed,
    String label = 'Ok',
  }) {
    if (pop == true) Navigator.pop(context);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('$error'),
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: (onPressed != null)
                    ? onPressed
                    : () => Navigator.pop(context),
                child: Text(label),
              ),
            ],
          ),
        );
      },
    );
  }
}
