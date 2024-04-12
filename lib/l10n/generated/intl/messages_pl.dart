// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "login": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "loginCannotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Login nie może być pusty"),
        "loginIsTooShort":
            MessageLookupByLibrary.simpleMessage("Login jest za krótki"),
        "password": MessageLookupByLibrary.simpleMessage("Hasło"),
        "passwordCannotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Hasło nie może być puste"),
        "passwordIsTooShort":
            MessageLookupByLibrary.simpleMessage("Hasło jest za krótkie"),
        "passwordsMustBeTheSame":
            MessageLookupByLibrary.simpleMessage("Hasła muszą być takie same"),
        "register": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "repeatPassword": MessageLookupByLibrary.simpleMessage("Powtórz hasło"),
        "theLoginIsAlreadyTaken":
            MessageLookupByLibrary.simpleMessage("Login jest już zajęty"),
        "username": MessageLookupByLibrary.simpleMessage("Nazwa użytkownika")
      };
}
