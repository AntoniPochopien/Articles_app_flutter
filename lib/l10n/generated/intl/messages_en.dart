// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addArticle": MessageLookupByLibrary.simpleMessage("Add article"),
        "appName": MessageLookupByLibrary.simpleMessage("Articles"),
        "articleContent":
            MessageLookupByLibrary.simpleMessage("Article content..."),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "nowLogIn": MessageLookupByLibrary.simpleMessage(
            "Now log in using the same details"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordCannotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Password cannot be empty"),
        "passwordIsTooShort":
            MessageLookupByLibrary.simpleMessage("Password is too short"),
        "passwordsMustBeTheSame":
            MessageLookupByLibrary.simpleMessage("Passwords must be the same"),
        "publish": MessageLookupByLibrary.simpleMessage("Publish"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "registeredSuccessfully":
            MessageLookupByLibrary.simpleMessage("Registered successfully"),
        "repeatPassword":
            MessageLookupByLibrary.simpleMessage("Repeat password"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "successfullyPublished":
            MessageLookupByLibrary.simpleMessage("Successfully published"),
        "theUsernameIsAlreadyTaken": MessageLookupByLibrary.simpleMessage(
            "The username is already taken"),
        "titleOfTheArticle":
            MessageLookupByLibrary.simpleMessage("Title of the article"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "usernameCannotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Username cannot be empty"),
        "usernameIsTooShort":
            MessageLookupByLibrary.simpleMessage("Username is too short"),
        "yourArticleIsNowVisible": MessageLookupByLibrary.simpleMessage(
            "Your article is now visible to other users!"),
        "yourArticles": MessageLookupByLibrary.simpleMessage("Your articles")
      };
}
