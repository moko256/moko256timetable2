// This is a hack to enable auto-import on VSCode.
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppLocale {
  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context)!;

  static DateFormat getCurrentDateFormat(BuildContext context) =>
      DateFormat.d(AppLocalizations.of(context)?.localeName);
}
