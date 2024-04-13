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
        "addArticle": MessageLookupByLibrary.simpleMessage("Dodaj artykuł"),
        "appName": MessageLookupByLibrary.simpleMessage("Articles"),
        "login": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "nowLogIn": MessageLookupByLibrary.simpleMessage(
            "Teraz zaloguj się używając tych samych danych"),
        "password": MessageLookupByLibrary.simpleMessage("Hasło"),
        "passwordCannotBeEmpty":
            MessageLookupByLibrary.simpleMessage("Hasło nie może być puste"),
        "passwordIsTooShort":
            MessageLookupByLibrary.simpleMessage("Hasło jest za krótkie"),
        "passwordsMustBeTheSame":
            MessageLookupByLibrary.simpleMessage("Hasła muszą być takie same"),
        "register": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "registeredSuccessfully":
            MessageLookupByLibrary.simpleMessage("Zarejestrowano pomyślnie"),
        "repeatPassword": MessageLookupByLibrary.simpleMessage("Powtórz hasło"),
        "theUsernameIsAlreadyTaken": MessageLookupByLibrary.simpleMessage(
            "Nazwa użytkownika jest już zajęta"),
        "username": MessageLookupByLibrary.simpleMessage("Nazwa użytkownika"),
        "usernameCannotBeEmpty": MessageLookupByLibrary.simpleMessage(
            "Nazwa użytkownika nie może być pusta"),
        "usernameIsTooShort": MessageLookupByLibrary.simpleMessage(
            "Nazwa użytkownika jest za krótka")
      };
}
