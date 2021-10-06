import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpValidate extends StatelessWidget {

  const SignUpValidate({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: SignUpValidate());

  @override
  Widget build(BuildContext context) {
    return Text('Please Check your email');
  }
}
