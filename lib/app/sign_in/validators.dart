import 'package:flutter/semantics.dart';

abstract class StringValidator {
  bool isVaild(String value);
}

class NonEmptyStringValidator implements StringValidator {
  @override
  bool isVaild(String value) {
    return value.isNotEmpty;
  }
}


class EmailAndPasswordValidators {
  final StringValidator emailValidator  = NonEmptyStringValidator();
  final StringValidator passwordValidator  = NonEmptyStringValidator();

  final String invaildEmailErrorText = 'Email can\'t be empty';
  final String invaildPasswordErrorText = 'Password can\'t be empty';

}