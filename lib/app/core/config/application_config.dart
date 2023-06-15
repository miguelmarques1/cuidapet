import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_text/app/core/helpers/environments.dart';

import 'firebase/firebase_options.dart';

class ApplicationConfig {
  Future<void> configure() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _firebaseCoreConfig();
    await Environments.loadEnvs();
  }

  Future<void> _firebaseCoreConfig() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
