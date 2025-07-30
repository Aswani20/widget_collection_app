import 'package:flutter/material.dart';
extension BuildContextExtension on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
  /// width usage -> context.width
  /// height usage -> context.height

  // AppLocalizations get l10n => AppLocalizations.of(this)!;
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  void closeKeyboard() => FocusScope.of(this).unfocus();
  bool get hasParentRoute => ModalRoute.of(this)?.impliesAppBarDismissal ?? false;
  /// Usage -> context.<extension name>
}

extension WidgetSizedBoxFromNumExtension on num {
  Widget get heightBox => SizedBox(height: toDouble());
  Widget get widthBox => SizedBox(width: toDouble());

  /// height use -> 16.heightBox
  /// width usage -> 16.widthBox
}
