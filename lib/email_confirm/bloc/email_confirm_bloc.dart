import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_auth_repository/firebase_auth_repository.dart';

part 'email_confirm_event.dart';
part 'email_confirm_state.dart';

class EmailConfirmBloc extends Bloc<EmailConfirmEvent, EmailConfirmState> {
  EmailConfirmBloc(this._authenticationRepository) :  super(EmailConfirmState.notVerified(_authenticationRepository.currentUser)) {
    on<EmailConfirmEvent>((event, emit) {
      on<EmailVerifyStatusChanged>(_onEmailVerifyStatusChanged);
      _userSubscription = _authenticationRepository.user.listen(
            (user) => add(EmailVerifyStatusChanged(user)),
      );
    });
  }
  final AuthenticationRepository _authenticationRepository;
  late final StreamSubscription<User> _userSubscription;


  void _onEmailVerifyStatusChanged(EmailVerifyStatusChanged event, Emitter<EmailConfirmState> emit) {
    emit(event.user.emailVerified??false
        ? EmailConfirmState.verified(event.user)
        : EmailConfirmState.notVerified(event.user));
  }
}
