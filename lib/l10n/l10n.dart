import 'dart:developer';

import 'package:articles_app_flutter/l10n/generated/l10n.dart';
import 'package:articles_app_flutter/l10n/restart_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

final T = S.current;

class L10n {
  static List<Locale> get supportedLocales => S.delegate.supportedLocales;

  static List<LocalizationsDelegate<dynamic>> get localizationDelegates => [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ];

  static void setLocaleFromId(BuildContext context, int localeId) {
    final locale = supportedLocales[localeId];
    log('Setting new locale from id: $locale');
    S.load(locale);
    RestartApp.restartApp(context);
  }

  static void setLocale(Locale locale) {
    log('Setting new locale: $locale');
    S.load(locale);
  }

  static void prepareForTest() =>
      S.load(const Locale.fromSubtags(languageCode: 'en'));

  static Locale get getCurrent => Locale(Intl.getCurrentLocale());
}
