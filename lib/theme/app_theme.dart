//Definción de los temas de estilo de la app
import 'package:flutter/material.dart';

class AppTheme{
//constante de color primario
static const primaryColor = Color.fromARGB(223, 101, 102, 189);
//constante de color de fondo
static const backColor = Color.fromARGB(218, 253, 242, 193);
//constante de tema
static final ThemeData lightTheme = ThemeData.light().copyWith(
   scaffoldBackgroundColor: const Color.fromARGB(255, 44, 172, 204),
        primaryColor: const  Color.fromARGB(255, 247, 222, 3),
        appBarTheme: const AppBarTheme(color: primaryColor,)
);
static final ThemeData darkTheme = ThemeData.dark().copyWith();

}