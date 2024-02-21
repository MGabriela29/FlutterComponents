//Definción de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
//constante de color primario
static const primaryColor = Color.fromARGB(223, 101, 102, 189);
//constante de color de fondo
static const backColor = Color.fromARGB(218, 253, 242, 193);
// color de texto
static const secondaryColor = Colors.black;
//constante de tema
static final ThemeData lightTheme = ThemeData.light().copyWith(
   scaffoldBackgroundColor: Color.fromARGB(78, 44, 172, 204),
        primaryColor: Color.fromARGB(255, 158, 3, 247),
        appBarTheme: const AppBarTheme(color: primaryColor,),
        textTheme: TextTheme(
          //titulos muy grandres 
          headlineLarge: GoogleFonts.gabriela(
            color: primaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: primaryColor,
            decorationStyle: TextDecorationStyle.dotted,
            decorationThickness: 2.0,
            //decoration: TextDecoration.lineThrough/tacha el texto 
          ),
          bodySmall: GoogleFonts.averiaSerifLibre(
            color: secondaryColor,
            fontSize: 16,
          )
        )
);
static final ThemeData darkTheme = ThemeData.dark().copyWith();

}