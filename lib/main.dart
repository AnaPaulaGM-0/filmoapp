import 'package:device_preview/device_preview.dart';
import 'package:filmo_app/controller/cadastro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'controller/filmes_controller.dart';
import 'controller/login_controller.dart';
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
  runApp(DevicePreview(builder: (builder) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FilmoApp',
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.red),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      initialRoute: 'filmes',
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
