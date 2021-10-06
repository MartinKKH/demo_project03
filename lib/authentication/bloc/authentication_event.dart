part of 'authentication_bloc.dart';

/// [AuthenticationEvent] instances will be the input to the
/// [AuthenticationBloc] and will be processed
/// and used to emit new [AuthenticationState] instances.
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}
/// [AuthenticationStatusChanged] notifies the bloc of a change
/// to the user's [AuthenticationStatus]
///
/// When an [AuthenticationStatusChanged] event is added
/// if the associated status is [AuthenticationStatus.authenticated],
/// the [AuthenticationBloc] queries the user via the [UserRepository].
class AuthenticationStatusChanged extends AuthenticationEvent {
  const AuthenticationStatusChanged(this.status);

  final AuthenticationStatus status;

  @override
  List<Object> get props => [status];
}
/// [AuthenticationLogoutRequested] notifies the bloc of a logout request
class AuthenticationLogoutRequested extends AuthenticationEvent {}
