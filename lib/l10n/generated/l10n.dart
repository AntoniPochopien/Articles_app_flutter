// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Articles`
  String get appName {
    return Intl.message(
      'Articles',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Username cannot be empty`
  String get usernameCannotBeEmpty {
    return Intl.message(
      'Username cannot be empty',
      name: 'usernameCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Username is too short`
  String get usernameIsTooShort {
    return Intl.message(
      'Username is too short',
      name: 'usernameIsTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty`
  String get passwordCannotBeEmpty {
    return Intl.message(
      'Password cannot be empty',
      name: 'passwordCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password is too short`
  String get passwordIsTooShort {
    return Intl.message(
      'Password is too short',
      name: 'passwordIsTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password`
  String get repeatPassword {
    return Intl.message(
      'Repeat password',
      name: 'repeatPassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must be the same`
  String get passwordsMustBeTheSame {
    return Intl.message(
      'Passwords must be the same',
      name: 'passwordsMustBeTheSame',
      desc: '',
      args: [],
    );
  }

  /// `The username is already taken`
  String get theUsernameIsAlreadyTaken {
    return Intl.message(
      'The username is already taken',
      name: 'theUsernameIsAlreadyTaken',
      desc: '',
      args: [],
    );
  }

  /// `Registered successfully`
  String get registeredSuccessfully {
    return Intl.message(
      'Registered successfully',
      name: 'registeredSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Now log in using the same details`
  String get nowLogIn {
    return Intl.message(
      'Now log in using the same details',
      name: 'nowLogIn',
      desc: '',
      args: [],
    );
  }

  /// `Add article`
  String get addArticle {
    return Intl.message(
      'Add article',
      name: 'addArticle',
      desc: '',
      args: [],
    );
  }

  /// `Your article is now visible to other users!`
  String get yourArticleIsNowVisible {
    return Intl.message(
      'Your article is now visible to other users!',
      name: 'yourArticleIsNowVisible',
      desc: '',
      args: [],
    );
  }

  /// `Successfully published`
  String get successfullyPublished {
    return Intl.message(
      'Successfully published',
      name: 'successfullyPublished',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Publish`
  String get publish {
    return Intl.message(
      'Publish',
      name: 'publish',
      desc: '',
      args: [],
    );
  }

  /// `Title of the article`
  String get titleOfTheArticle {
    return Intl.message(
      'Title of the article',
      name: 'titleOfTheArticle',
      desc: '',
      args: [],
    );
  }

  /// `Article content...`
  String get articleContent {
    return Intl.message(
      'Article content...',
      name: 'articleContent',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Your articles`
  String get yourArticles {
    return Intl.message(
      'Your articles',
      name: 'yourArticles',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
