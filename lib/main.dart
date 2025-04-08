import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'controller/login_controller.dart';
import 'controller/filmes_controller.dart';
import 'controller/cadastro_controller.dart';

import 'view/login_view.dart';
import 'view/cadastro_view.dart';
import 'view/esqueci_senha_view.dart';
import 'view/home_view.dart';
import 'view/filmes_view.dart';
import 'view/detalhes_filme.dart';
import 'view/sobre_view.dart';

final g = GetIt.instance;

void main() {
  g.registerSingleton<LoginController>(LoginController());
  g.registerSingleton<FilmesController>(FilmesController());
  g.registerSingleton<CadastroController>(CadastroController());

  runApp(
    DevicePreview(
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FilmoApp',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.red.shade800,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red.shade800,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red.shade800),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade800),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade800),
          ),
          filled: true,
          fillColor: Colors.white10,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red.shade800,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginView(),
        'cadastro': (context) => CadastroView(),
        'esqueci_senha': (context) => EsqueciSenhaView(),
        'home': (context) => HomeView(),
        'filmes': (context) => FilmesView(),
        'detalhes_filme': (context) => DetalhesFilmeView(),
        'sobre': (context) => SobreView(),
      },
    );
  }
}
