
import 'package:bloc/bloc.dart';
import 'package:firebase_auth_repository/firebase_auth_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

import 'app/app.dart';




Future<void> main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;
  runApp(App(authenticationRepository: authenticationRepository));
}