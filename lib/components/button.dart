import 'package:flutter/material.dart';
import '/package.dart';

class Button extends StatelessWidget {
  final String? label;

  final void Function()? onPressed;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final MaterialStatesController? statesController;
  final Widget? child;

  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? disabledForegroundColor;
  final Color? disabledBackgroundColor;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final double? elevation;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final Size? fixedSize;
  final Size? maximumSize;
  final BorderSide? side;
  final OutlinedBorder? shape;
  final MouseCursor? enabledMouseCursor;
  final MouseCursor? disabledMouseCursor;
  final VisualDensity? visualDensity;
  final MaterialTapTargetSize? tapTargetSize;
  final Duration? animationDuration;
  final bool? enableFeedback;
  final AlignmentGeometry? alignment;
  final InteractiveInkFeatureFactory? splashFactory;

  ///
  final bool inherit;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextBaseline? textBaseline;
  final double? height;
  final TextLeadingDistribution? leadingDistribution;
  final Locale? locale;
  final Paint? foreground;
  final Paint? background;
  final List<Shadow>? shadows;
  final List<FontFeature>? fontFeatures;
  final List<FontVariation>? fontVariations;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;
  final String? debugLabel;
  final String? fontFamily;
  final List<String>? fontFamilyFallback;
  final String? package;
  final TextOverflow? overflow;

  const Button({
    super.key,
    this.label,

    ///
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.statesController,
    this.child,

    ///
    this.foregroundColor = Colors.white,
    this.backgroundColor = Colors.black,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.elevation,
    this.textStyle,
    this.padding,
    this.minimumSize,
    this.fixedSize,
    this.maximumSize,
    this.side,
    this.shape,
    this.enabledMouseCursor,
    this.disabledMouseCursor,
    this.visualDensity,
    this.tapTargetSize,
    this.animationDuration,
    this.enableFeedback,
    this.alignment,
    this.splashFactory,

    ///
    this.inherit = true,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.leadingDistribution,
    this.locale,
    this.foreground,
    this.background,
    this.shadows,
    this.fontFeatures,
    this.fontVariations,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      style: style ??
          ElevatedButton.styleFrom(
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            disabledForegroundColor: disabledForegroundColor,
            disabledBackgroundColor: disabledBackgroundColor,
            shadowColor: shadowColor,
            surfaceTintColor: surfaceTintColor,
            elevation: elevation,
            textStyle: textStyle ??
                TextStyle(
                  inherit: inherit,
                  color: color,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  fontStyle: fontStyle,
                  letterSpacing: letterSpacing,
                  wordSpacing: wordSpacing,
                  textBaseline: textBaseline,
                  height: height,
                  leadingDistribution: leadingDistribution,
                  locale: locale,
                  foreground: foreground,
                  background: background,
                  shadows: shadows,
                  fontFeatures: fontFeatures,
                  fontVariations: fontVariations,
                  decoration: decoration,
                  decorationColor: decorationColor,
                  decorationStyle: decorationStyle,
                  decorationThickness: decorationThickness,
                  debugLabel: debugLabel,
                  fontFamily: fontFamily,
                  fontFamilyFallback: fontFamilyFallback,
                  package: package,
                  overflow: overflow,
                ),
            padding: padding,
            minimumSize: minimumSize,
            fixedSize: fixedSize,
            maximumSize: maximumSize,
            side: side,
            shape: shape,
            enabledMouseCursor: enabledMouseCursor,
            disabledMouseCursor: disabledMouseCursor,
            visualDensity: visualDensity,
            tapTargetSize: tapTargetSize,
            animationDuration: animationDuration,
            enableFeedback: enableFeedback,
            alignment: alignment,
            splashFactory: splashFactory,
          ),
      child: child ?? Text('$label'),
    );
  }
}

class Back extends StatelessWidget {
  final Color? backgroundColor;
  final Color? color;
  final void Function()? onPressed;

  const Back({
    super.key,
    this.backgroundColor,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: App.height * 0.04,
        right: App.width * 0.4,
      ),
      child: InkWell(
        onTap: onPressed,
        child: CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 20,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Icon(
              Icons.arrow_back_ios,
              color: color,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class TextsButton extends StatelessWidget {
  final String? text;
  final Color? backgroundColor;
  final Color? color;
  final void Function()? onPressed;
  final Size? minimumSize;
  const TextsButton({
    super.key,
    this.text,
    this.backgroundColor,
    this.onPressed,
    this.color,
    this.minimumSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: minimumSize,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
            right: Radius.circular(20),
          ),
        ),
      ),
      child: Text(
        '$text',
        style: TextStyle(fontSize: 17, color: color ?? Colors.black),
      ),
    );
  }
}

class MyElvatedButtonIcon extends StatelessWidget {
  final String? text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? fill;
  final double? radius;
  final double? right;
  final Color? color;
  final void Function()? onPressed;
  final Size? minimumSize;
  final Widget? child;
  const MyElvatedButtonIcon({
    super.key,
    this.text,
    this.backgroundColor,
    this.onPressed,
    this.color,
    this.minimumSize,
    this.child,
    this.fill,
    this.radius,
    this.right,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: minimumSize,
        foregroundColor: foregroundColor ?? Colors.white,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10),
            right: Radius.circular(10),
          ),
        ),
      ),
      icon: Padding(
        padding: EdgeInsets.only(right: right ?? 0),
        child: CircleAvatar(
          backgroundColor: fill,
          radius: radius,
          child: child,
        ),
      ),
      label: Text(
        '$text',
        style: TextStyle(fontSize: 17, color: color ?? Colors.white),
      ),
    );
  }
}
