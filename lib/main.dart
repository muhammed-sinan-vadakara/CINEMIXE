import 'package:cinemixe/core/theme/light_theme.dart';
import 'package:cinemixe/feactures/authenthication/presentation/pages/login_page.dart';
import 'package:cinemixe/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const ProviderScope(child: MovieApp()));
}

class MovieApp extends ConsumerWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ref.watch(lightThemeProvider),
        home: const Loginpage());
  }
}




// https://dribbble.com/shots/23385406-Sign-Up-Login-UI-for-Android-phones