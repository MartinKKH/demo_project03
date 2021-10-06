import 'package:firebase_auth_repository/firebase_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../email_confirm.dart';

class EmailConfirmPage extends StatelessWidget {
  const EmailConfirmPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const EmailConfirmPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<EmailConfirmBloc>(
          create: (context) =>
              EmailConfirmBloc(context.read<AuthenticationRepository>()),
          child: BlocBuilder<EmailConfirmBloc, EmailConfirmState>(
            builder: (context, state) {
              return Text('${state}');
            },
          ),
        )
    );
  }
}
