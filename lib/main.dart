import 'package:device_preview/device_preview.dart'; // Para simular dispositivos diferentes
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart'; // Inyección de dependencias

// Controladores
import 'controller/login_controller.dart';
import 'controller/filmes_controller.dart';
import 'controller/cadastro_controller.dart';

// Vistas
import 'view/login_view.dart';
import 'view/cadastro_view.dart';
import 'view/esqueci_senha_view.dart';
import 'view/home_view.dart';
import 'view/filmes_view.dart';
import 'view/detalhes_filme.dart';
import 'view/sobre_view.dart';

// Instancia de GetIt para acceder a los controladores en toda la app
final g = GetIt.instance;

void main() {
  // Registro de los controladores como singleton (una única instancia)
  g.registerSingleton<LoginController>(LoginController());
  g.registerSingleton<FilmesController>(FilmesController());
  g.registerSingleton<CadastroController>(CadastroController());

  runApp(
    DevicePreview(
      builder: (context) => const MainApp(), // Aquí se construye la app
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la etiqueta DEBUG
      title: 'FilmoApp',

      // Tema personalizado
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // Fondo negro por defecto
        primaryColor: Colors.red.shade800, // Color principal

        // Tema para la AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red.shade800,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),

        // Estilos de texto
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
        ),

        // Tema para campos de texto
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
          fillColor: Colors.white10, // fondo del campo de texto
        ),

        // Tema para botones elevados
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

      // Ruta inicial de la app
      initialRoute: 'login',

      // Definición de las rutas
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
