import 'package:flutter/material.dart';
import '/package.dart';

class Input extends StatelessWidget {
  final bool search;
  final AutovalidateMode? autovalidateMode;
  final Brightness? keyboardAppearance;
  final Clip clipBehavior;
  final Color? cursorColor;
  final ContentInsertionConfiguration? contentInsertionConfiguration;
  final DragStartBehavior dragStartBehavior;
  final EdgeInsets scrollPadding;
  final FocusNode? focusNode;
  final Iterable<String>? autofillHints;
  final List<TextInputFormatter>? inputFormatters;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final MouseCursor? mouseCursor;
  final Radius? cursorRadius;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final SpellCheckConfiguration? spellCheckConfiguration;
  final String obscuringCharacter;
  final String? Function(String?)? validator;
  final String? initialValue;
  final String? restorationId;
  final StrutStyle? strutStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextCapitalization textCapitalization;
  final TextDirection? textDirection;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextMagnifierConfiguration? magnifierConfiguration;
  final TextSelectionControls? selectionControls;
  final TextStyle? style;
  final UndoHistoryController? undoController;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final Widget? Function(BuildContext,
      {required int currentLength,
      required bool isFocused,
      required int? maxLength})? buildCounter;
  final bool autocorrect;
  final bool autofocus;
  final bool canRequestFocus;
  final bool enableIMEPersonalizedLearning;
  final bool enableSuggestions;
  final bool expands;
  final bool obscureText;
  final bool readOnly;
  final bool scribbleEnabled;
  final bool? cursorOpacityAnimates;
  final bool? enableInteractiveSelection;
  final bool enabled;
  final bool? showCursor;
  final double cursorWidth;
  final double? cursorHeight;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final void Function(String, Map<String, dynamic>)? onAppPrivateCommand;
  final void Function(String?)? onSaved;

  final InputDecoration? decoration;
  final Widget? icon;
  final Color? iconColor;
  final Widget? label;
  final String? labelText;
  final TextStyle? labelStyle;
  final TextStyle? floatingLabelStyle;
  final String? helperText;
  final TextStyle? helperStyle;
  final int? helperMaxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextDirection? hintTextDirection;
  final int? hintMaxLines;
  final Widget? error;
  final String? errorText;
  final TextStyle? errorStyle;
  final int? errorMaxLines;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final FloatingLabelAlignment? floatingLabelAlignment;
  final bool isCollapsed;
  final bool? isDense;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final Widget? prefix;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final Color? prefixIconColor;
  final Widget? suffixIcon;
  final Widget? suffix;
  final String? suffixText;
  final TextStyle? suffixStyle;
  final Color? suffixIconColor;
  final BoxConstraints? suffixIconConstraints;
  final Widget? counter;
  final String? counterText;
  final TextStyle? counterStyle;
  final bool? filled;
  final Color? fillColor;
  final Color? focusColor;
  final Color? hoverColor;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final String? semanticCounterText;
  final bool? alignLabelWithHint;
  final BoxConstraints? constraints;

  final List<dynamic>? initialList;
  final Function? future;
  final TextStyle? textStyle;
  final Function? getSelectedValue;
  final ScrollbarDecoration? scrollbarDecoration;
  final int itemsInView;
  final int minStringLength;

  const Input({
    super.key,
    this.search = false,
    this.autocorrect = true,
    this.autofillHints,
    this.autofocus = false,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.buildCounter,
    this.canRequestFocus = true,
    this.clipBehavior = Clip.hardEdge,
    this.contentInsertionConfiguration,
    this.contextMenuBuilder,
    this.controller,
    this.cursorColor,
    this.cursorHeight,
    this.cursorOpacityAnimates,
    this.cursorRadius,
    this.cursorWidth = 2.0,
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableIMEPersonalizedLearning = true,
    this.enableInteractiveSelection,
    this.enableSuggestions = true,
    this.enabled = true,
    this.expands = false,
    this.focusNode,
    this.initialValue,
    this.inputFormatters,
    this.keyboardAppearance,
    this.keyboardType,
    this.magnifierConfiguration,
    this.maxLength,
    this.maxLengthEnforcement,
    this.maxLines = 1,
    this.minLines,
    this.mouseCursor,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.onAppPrivateCommand,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.onTap,
    this.onTapOutside,
    this.readOnly = false,
    this.restorationId,
    this.scribbleEnabled = true,
    this.scrollController,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.scrollPhysics,
    this.selectionControls,
    this.showCursor,
    this.smartDashesType,
    this.smartQuotesType,
    this.spellCheckConfiguration,
    this.strutStyle,
    this.style,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.textInputAction,
    this.undoController,
    this.validator,
    //
    this.decoration,
    this.alignLabelWithHint,
    this.border,
    this.constraints,
    this.contentPadding,
    this.counter,
    this.counterStyle,
    this.counterText,
    this.disabledBorder,
    this.enabledBorder,
    this.error,
    this.errorBorder,
    this.errorMaxLines,
    this.errorStyle,
    this.errorText,
    this.fillColor,
    this.filled,
    this.floatingLabelAlignment,
    this.floatingLabelBehavior,
    this.floatingLabelStyle,
    this.focusColor,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.helperMaxLines,
    this.helperStyle,
    this.helperText,
    this.hintMaxLines,
    this.hintStyle,
    this.hintText,
    this.hintTextDirection,
    this.hoverColor,
    this.icon,
    this.iconColor,
    this.isCollapsed = false,
    this.isDense,
    this.label,
    this.labelStyle,
    this.labelText,
    this.prefix,
    this.prefixIcon,
    this.prefixIconColor,
    this.prefixIconConstraints,
    this.prefixStyle,
    this.prefixText,
    this.semanticCounterText,
    this.suffix,
    this.suffixIcon,
    this.suffixIconColor,
    this.suffixIconConstraints,
    this.suffixStyle,
    this.suffixText,
    //
    this.initialList = const [],
    this.future,
    this.textStyle,
    this.getSelectedValue,
    this.scrollbarDecoration,
    this.itemsInView = 3,
    this.minStringLength = 2,
  });

  @override
  Widget build(BuildContext context) {
    if (search) {
      return TextFieldSearch(
        label: '$hintText',
        controller: controller!,
        initialList: initialList,
        future: future,
        getSelectedValue: getSelectedValue,
        textStyle: textStyle,
        decoration: decoration ??
            InputDecoration(
              alignLabelWithHint: alignLabelWithHint,
              border: border,
              constraints: constraints,
              contentPadding: contentPadding,
              counter: counter,
              counterStyle: counterStyle,
              counterText: counterText,
              disabledBorder: disabledBorder,
              enabledBorder: enabledBorder,
              error: error,
              errorBorder: errorBorder,
              errorMaxLines: errorMaxLines,
              errorStyle: errorStyle,
              errorText: errorText,
              fillColor: fillColor,
              filled: filled,
              floatingLabelAlignment: floatingLabelAlignment,
              floatingLabelBehavior: floatingLabelBehavior,
              floatingLabelStyle: floatingLabelStyle,
              focusColor: focusColor,
              focusedBorder: focusedBorder,
              focusedErrorBorder: focusedErrorBorder,
              helperMaxLines: helperMaxLines,
              helperStyle: helperStyle,
              helperText: helperText,
              hintMaxLines: hintMaxLines,
              hintStyle: hintStyle,
              hintText: hintText,
              hintTextDirection: hintTextDirection,
              hoverColor: hoverColor,
              icon: icon,
              iconColor: iconColor,
              isCollapsed: isCollapsed,
              isDense: isDense,
              label: label,
              labelStyle: labelStyle,
              labelText: labelText,
              prefix: prefix,
              prefixIcon: prefixIcon,
              prefixIconColor: prefixIconColor,
              prefixIconConstraints: prefixIconConstraints,
              prefixStyle: prefixStyle,
              prefixText: prefixText,
              semanticCounterText: semanticCounterText,
              suffix: suffix,
              suffixIcon: suffixIcon,
              suffixIconColor: suffixIconColor,
              suffixIconConstraints: suffixIconConstraints,
              suffixStyle: suffixStyle,
              suffixText: suffixText,
            ),
        scrollbarDecoration: scrollbarDecoration,
        itemsInView: itemsInView,
        minStringLength: minStringLength,
      );
    } else {
      return TextFormField(
        autocorrect: autocorrect,
        autofillHints: autofillHints,
        autofocus: autofocus,
        autovalidateMode: autovalidateMode,
        buildCounter: buildCounter,
        canRequestFocus: canRequestFocus,
        clipBehavior: clipBehavior,
        contentInsertionConfiguration: contentInsertionConfiguration,
        contextMenuBuilder: contextMenuBuilder,
        controller: controller,
        cursorColor: cursorColor,
        cursorHeight: cursorHeight,
        cursorOpacityAnimates: cursorOpacityAnimates,
        cursorRadius: cursorRadius,
        cursorWidth: cursorWidth,
        decoration: decoration ??
            InputDecoration(
              alignLabelWithHint: alignLabelWithHint,
              border: border,
              constraints: constraints,
              contentPadding: contentPadding,
              counter: counter,
              counterStyle: counterStyle,
              counterText: counterText,
              disabledBorder: disabledBorder,
              enabledBorder: enabledBorder,
              error: error,
              errorBorder: errorBorder,
              errorMaxLines: errorMaxLines,
              errorStyle: errorStyle,
              errorText: errorText,
              fillColor: fillColor,
              filled: filled,
              floatingLabelAlignment: floatingLabelAlignment,
              floatingLabelBehavior: floatingLabelBehavior,
              floatingLabelStyle: floatingLabelStyle,
              focusColor: focusColor,
              focusedBorder: focusedBorder,
              focusedErrorBorder: focusedErrorBorder,
              helperMaxLines: helperMaxLines,
              helperStyle: helperStyle,
              helperText: helperText,
              hintMaxLines: hintMaxLines,
              hintStyle: hintStyle,
              hintText: hintText,
              hintTextDirection: hintTextDirection,
              hoverColor: hoverColor,
              icon: icon,
              iconColor: iconColor,
              isCollapsed: isCollapsed,
              isDense: isDense,
              label: label,
              labelStyle: labelStyle,
              labelText: labelText,
              prefix: prefix,
              prefixIcon: prefixIcon,
              prefixIconColor: prefixIconColor,
              prefixIconConstraints: prefixIconConstraints,
              prefixStyle: prefixStyle,
              prefixText: prefixText,
              semanticCounterText: semanticCounterText,
              suffix: suffix,
              suffixIcon: suffixIcon,
              suffixIconColor: suffixIconColor,
              suffixIconConstraints: suffixIconConstraints,
              suffixStyle: suffixStyle,
              suffixText: suffixText,
            ),
        dragStartBehavior: dragStartBehavior,
        enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
        enableInteractiveSelection: enableInteractiveSelection,
        enableSuggestions: enableSuggestions,
        enabled: enabled,
        expands: expands,
        focusNode: focusNode,
        initialValue: initialValue,
        inputFormatters: inputFormatters,
        keyboardAppearance: keyboardAppearance,
        keyboardType: keyboardType,
        magnifierConfiguration: magnifierConfiguration,
        maxLength: maxLength,
        maxLengthEnforcement: maxLengthEnforcement,
        maxLines: maxLines,
        minLines: minLines,
        mouseCursor: mouseCursor,
        obscureText: obscureText,
        obscuringCharacter: obscuringCharacter,
        onAppPrivateCommand: onAppPrivateCommand,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        onSaved: onSaved,
        onTap: onTap,
        onTapOutside: onTapOutside,
        readOnly: readOnly,
        restorationId: restorationId,
        scribbleEnabled: scribbleEnabled,
        scrollController: scrollController,
        scrollPadding: scrollPadding,
        scrollPhysics: scrollPhysics,
        selectionControls: selectionControls,
        showCursor: showCursor,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        spellCheckConfiguration: spellCheckConfiguration,
        strutStyle: strutStyle,
        style: style,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        textCapitalization: textCapitalization,
        textDirection: textDirection,
        textInputAction: textInputAction,
        undoController: undoController,
        validator: validator,
      );
    }
  }
}

class InputPhone extends StatelessWidget {
  final String? initialCountryCode;
  final InputDecoration? decoration;
  final String languageCode;
  final FutureOr<String?> Function(PhoneNumber?)? validator;
  final void Function(PhoneNumber)? onChanged;

  final Widget? icon;
  final Color? iconColor;
  final Widget? label;
  final String? labelText;
  final TextStyle? labelStyle;
  final TextStyle? floatingLabelStyle;
  final String? helperText;
  final TextStyle? helperStyle;
  final int? helperMaxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextDirection? hintTextDirection;
  final int? hintMaxLines;
  final Widget? error;
  final String? errorText;
  final TextStyle? errorStyle;
  final int? errorMaxLines;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final FloatingLabelAlignment? floatingLabelAlignment;
  final bool isCollapsed;
  final bool? isDense;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon;
  final BoxConstraints? prefixIconConstraints;
  final Widget? prefix;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final Color? prefixIconColor;
  final Widget? suffixIcon;
  final Widget? suffix;
  final String? suffixText;
  final TextStyle? suffixStyle;
  final Color? suffixIconColor;
  final BoxConstraints? suffixIconConstraints;
  final Widget? counter;
  final String? counterText;
  final TextStyle? counterStyle;
  final bool? filled;
  final Color? fillColor;
  final Color? focusColor;
  final Color? hoverColor;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final String? semanticCounterText;
  final bool? alignLabelWithHint;
  final BoxConstraints? constraints;

  const InputPhone({
    super.key,
    this.initialCountryCode,
    this.decoration,
    this.languageCode = 'en',
    this.validator,
    this.onChanged,
    this.alignLabelWithHint,
    this.border,
    this.constraints,
    this.contentPadding,
    this.counter,
    this.counterStyle,
    this.counterText,
    this.disabledBorder,
    this.enabledBorder,
    this.error,
    this.errorBorder,
    this.errorMaxLines,
    this.errorStyle,
    this.errorText,
    this.fillColor,
    this.filled,
    this.floatingLabelAlignment,
    this.floatingLabelBehavior,
    this.floatingLabelStyle,
    this.focusColor,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.helperMaxLines,
    this.helperStyle,
    this.helperText,
    this.hintMaxLines,
    this.hintStyle,
    this.hintText,
    this.hintTextDirection,
    this.hoverColor,
    this.icon,
    this.iconColor,
    this.isCollapsed = false,
    this.isDense,
    this.label,
    this.labelStyle,
    this.labelText,
    this.prefix,
    this.prefixIcon,
    this.prefixIconColor,
    this.prefixIconConstraints,
    this.prefixStyle,
    this.prefixText,
    this.semanticCounterText,
    this.suffix,
    this.suffixIcon,
    this.suffixIconColor,
    this.suffixIconConstraints,
    this.suffixStyle,
    this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      initialCountryCode: initialCountryCode,
      languageCode: languageCode,
      decoration: decoration ??
          InputDecoration(
            alignLabelWithHint: alignLabelWithHint,
            border: border,
            constraints: constraints,
            contentPadding: contentPadding,
            counter: counter,
            counterStyle: counterStyle,
            counterText: counterText,
            disabledBorder: disabledBorder,
            enabledBorder: enabledBorder,
            error: error,
            errorBorder: errorBorder,
            errorMaxLines: errorMaxLines,
            errorStyle: errorStyle,
            errorText: errorText,
            fillColor: fillColor,
            filled: filled,
            floatingLabelAlignment: floatingLabelAlignment,
            floatingLabelBehavior: floatingLabelBehavior,
            floatingLabelStyle: floatingLabelStyle,
            focusColor: focusColor,
            focusedBorder: focusedBorder,
            focusedErrorBorder: focusedErrorBorder,
            helperMaxLines: helperMaxLines,
            helperStyle: helperStyle,
            helperText: helperText,
            hintMaxLines: hintMaxLines,
            hintStyle: hintStyle,
            hintText: hintText,
            hintTextDirection: hintTextDirection,
            hoverColor: hoverColor,
            icon: icon,
            iconColor: iconColor,
            isCollapsed: isCollapsed,
            isDense: isDense,
            label: label,
            labelStyle: labelStyle,
            labelText: labelText,
            prefix: prefix,
            prefixIcon: prefixIcon,
            prefixIconColor: prefixIconColor,
            prefixIconConstraints: prefixIconConstraints,
            prefixStyle: prefixStyle,
            prefixText: prefixText,
            semanticCounterText: semanticCounterText,
            suffix: suffix,
            suffixIcon: suffixIcon,
            suffixIconColor: suffixIconColor,
            suffixIconConstraints: suffixIconConstraints,
            suffixStyle: suffixStyle,
            suffixText: suffixText,
          ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}

class Pin extends StatelessWidget {
  final TextEditingController controller;
  final bool autofocus;

  const Pin({
    super.key,
    required this.controller,
    required this.autofocus,
  });

  @override
  Widget build(BuildContext context) {
    double minus = App.padding * 2;
    double rw = App.width - minus;

    return SizedBox(
      height: 60,
      width: App.p(rw, 14),
      child: TextField(
        autofocus: autofocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          counterText: '',
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        onChanged: (value) {
          FocusScope.of(context).nextFocus();
        },
      ),
    );
  }
}
