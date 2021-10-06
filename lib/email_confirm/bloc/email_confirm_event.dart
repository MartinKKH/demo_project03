part of 'email_confirm_bloc.dart';

abstract class EmailConfirmEvent extends Equatable {
  const EmailConfirmEvent();
}


class EmailVerifyStatusChanged extends EmailConfirmEvent {
  @visibleForTesting
  const EmailVerifyStatusChanged(this.user);

  final User user;

  @override
  List<Object> get props => [user];
}