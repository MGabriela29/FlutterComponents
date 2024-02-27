//Definción de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
//constante de color primario
static const primaryColor = Color.fromARGB(255, 132, 220, 255);
static const colorTitle=Color.fromARGB(255, 0, 0, 0);
//constante de color de fondo
static const backColor = Color.fromARGB(218, 253, 242, 193);
// color de texto
static const secondaryColor = Color.fromARGB(255, 255, 255, 255);
static const botncolor = Color.fromARGB(255, 0, 0, 0);
//constante de tema
static final ThemeData lightTheme = ThemeData.light().copyWith(
   scaffoldBackgroundColor: const Color.fromARGB(78, 44, 172, 204),
        primaryColor: const  Color.fromARGB(255, 158, 3, 247),
        appBarTheme:  AppBarTheme(
        color: primaryColor,
        titleTextStyle: GoogleFonts.laila(
          color: colorTitle,
          fontSize: 28.5,
          fontWeight: FontWeight.bold,
        ),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 7, 255, 214),
          size: 35.0,

        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(
            Colors.blueGrey,
          ),
          foregroundColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 77, 199, 255),
          ),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.pacifico(fontSize: 25.0,)
          )
           )
        ),
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
          headlineMedium: GoogleFonts.gabriela(
            color: secondaryColor,
            fontSize: 21,
            fontWeight: FontWeight.bold,
            

          ),
          bodySmall: GoogleFonts.averiaSerifLibre(
            color: secondaryColor,
            fontSize: 16,
          ),
           bodyMedium: GoogleFonts.averiaSerifLibre(
            color: botncolor,
            fontSize: 16,
          ),
        )
);
static final ThemeData darkTheme = ThemeData.dark().copyWith();

}