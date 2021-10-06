import 'package:formz/formz.dart';

/// Validation errors for the [Email] [FormzInput].
enum EmailValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template email}
/// Form input for an email input.
/// {@endtemplate}
class Email extends FormzInput<String, EmailValidationError> {
  const Email._([this.isVerified = false]) :  super.pure('');

  /// {@macro email}
  const Email.pure() : this._();

  /// [isVerified] indicates if the email is verified by the user
  /// {@macro email}
  const Email.dirty([String value = '', bool this.isVerified = false]) : super.dirty(value);

  final bool isVerified;


  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String? value) {
    return _emailRegExp.hasMatch(value ?? '')
        ? null
        : EmailValidationError.invalid;
  }
}