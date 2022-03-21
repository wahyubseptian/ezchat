import 'package:ezchat/app/utils/routes/app_pages.dart';

import 'app/utils/Loading.dart';
import 'app/utils/error_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(EzChat());
}

class EzChat extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  EzChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const ErrorPage();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return GetMaterialApp(
              title: "EZ Chat",
            );
          }
          return const Loading();
        });
  }
}
