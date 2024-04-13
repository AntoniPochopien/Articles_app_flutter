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
        "appName": MessageLookupByLibrary.simpleMessage("Articles"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "nowLogIn": MessageLookupByLibrary.simpleMessage(
            "Teraz zaloguj się używając tych samych danych"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordCannotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Password cannot be empty"),
        "passwordIsTooShort":
            MessageLookupByLibrary.simpleMessage("Password is too short"),
        "passwordsMustBeTheSame":
            MessageLookupByLibrary.simpleMessage("Passwords must be the same"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "registeredSuccessfully":
            MessageLookupByLibrary.simpleMessage("Zarejestrowano pomyślnie"),
        "repeatPassword":
            MessageLookupByLibrary.simpleMessage("Repeat password"),
        "theUsernameIsAlreadyTaken": MessageLookupByLibrary.simpleMessage(
            "The username is already taken"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "usernameCannotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Username cannot be empty"),
        "usernameIsTooShort":
            MessageLookupByLibrary.simpleMessage("Username is too short")
      };
}
