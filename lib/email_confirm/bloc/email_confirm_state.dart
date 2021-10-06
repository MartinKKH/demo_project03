part of 'email_confirm_bloc.dart';

enum EmailVerifyStatus {
  notVerified,
  verified,
}

class EmailConfirmState extends Equatable {
  const EmailConfirmState._({
    required this.status,
    required this.user,
});

  const EmailConfirmState.notVerified(User user)
      : this._(status: EmailVerifyStatus.notVerified, user: user);

  const EmailConfirmState.verified(User user)
      : this._(status: EmailVerifyStatus.verified, user: user);


  final EmailVerifyStatus status;
  final User user;

  @override
  List<Object> get props => [status, user];
}




// class AppState extends Equatable {
//   const AppState._({
//     required this.status,
//     this.user = User.empty,
//   });
//
//   const AppState.authenticated(User user)
//       : this._(status: AppStatus.authenticated, user: user);
//
//   const AppState.unauthenticated() : this._(status: AppStatus.unauthenticated);
//
//   final AppStatus status;
//   final User user;
//
//   @override
//   List<Object> get props => [status, user];
// }