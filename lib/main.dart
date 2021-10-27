import 'package:brasilnews/providers/categorias.dart';
import 'package:brasilnews/providers/colunistas.dart';
import 'package:brasilnews/providers/favoritos.dart';
import 'package:brasilnews/providers/noticias.dart';
import 'package:brasilnews/screens/categoria_screen.dart';
import 'package:brasilnews/screens/colunista_screen.dart';
import 'package:brasilnews/screens/favoritos_screen.dart';
import 'package:brasilnews/screens/noticia_screen.dart';
import 'package:brasilnews/screens/splash_screen.dart';
import 'package:brasilnews/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(BrasilNewsApp());
}

class BrasilNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Noticias(),
        ),
        ChangeNotifierProvider(
          create: (context) => Colunistas(),
        ),
        ChangeNotifierProvider(
          create: (context) => Categorias(),
        ),
        ChangeNotifierProvider(
          create: (context) => Favoritos(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          accentColor: Colors.black,
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        routes: {
          "/": (ctx) => SplashScreen(),
          TabsScreen.ROUTE_NAME: (ctx) => TabsScreen(),
          NoticiaScreen.ROUTE_NAME: (ctx) => NoticiaScreen(),
          ColunistaScreen.ROUTE_NAME: (ctx) => ColunistaScreen(),
          CategoriaScreen.ROUTE_NAME: (ctx) => CategoriaScreen(),
          FavoritosScreen.ROUTE_NAME: (ctx) => FavoritosScreen(),
        },
      ),
    );
  }
}
