import 'package:demo_project03/home/home.dart';
import 'package:demo_project03/login/login.dart';
import 'package:flutter/widgets.dart';

import '../app.dart';



List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}