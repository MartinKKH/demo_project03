// // ignore_for_file: require_trailing_commas
// // Copyright 2017 The Chromium Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
//
// import 'dart:async';
//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_analytics/observer.dart';
//
// import 'firebase_analytics_page.dart';
// import 'firebase_core.dart';
//
//
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp( MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   MyApp({Key? key}) : super(key: key);
//
//   static FirebaseAnalytics analytics = FirebaseAnalytics();
//   static FirebaseAnalyticsObserver observer =
//   FirebaseAnalyticsObserver(analytics: analytics);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   var page = [const FirebaseCore(title: 'Core'), FirebaseAnalyticsPage(
//     title: 'Analytics',
//     analytics: MyApp.analytics,
//     observer: MyApp.observer,
//   )];
//
//   late int botNavCurrentIndex;
//
//   @override
//   void initState() {
//     botNavCurrentIndex =0 ;
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Firebase Analytics Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       navigatorObservers: <NavigatorObserver>[MyApp.observer],
//       home: Scaffold(
//         body: page[botNavCurrentIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: botNavCurrentIndex,
//           onTap: (index){setState(() {
//             botNavCurrentIndex = index;
//           });},
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon : Icon(Icons.camera), label: 'Core'),
//             BottomNavigationBarItem(icon : Icon(Icons.analytics), label: 'Analytics'),
//           ]
//         ),
//       ),
//     );
//   }
// }
//

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/widgets.dart';
import 'app.dart';
import 'package:user_repository/user_repository.dart';

void main() {
  runApp(App(
    authenticationRepository: AuthenticationRepository(),
    userRepository: UserRepository(),
  ));
}
