
import 'package:flutter/material.dart';

class FirebaseCore extends StatelessWidget {
  const FirebaseCore({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: const Center(child: Text('Firebase Core')));
  }
}
