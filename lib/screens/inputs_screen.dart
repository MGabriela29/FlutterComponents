import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}
//clase que define el estado de la ventana 
class _InputsScreenState extends State<InputsScreen> {
  bool switchValue = false; //controla el widget swicht //variable de clase
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Entradas',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradaNombre(),
            entradaSwicht(),
            entradasSlider(),
               const ElevatedButton(
                onPressed: null, 
                child: Text('Guardar',
                //style: AppTheme.lightTheme.textTheme.bodyMedium,
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio', ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_comment),
              label: 'Comentarios')
        ]
         ),
    );
  }

  TextField entradaNombre() {
    return TextField(
          style: AppTheme.lightTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            labelText: 'Escribe tu nombre:',
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
        );
  }

Row entradaSwicht(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:<Widget> [
      Text(
        '¿Te gustan los cupcakes?',
        style:  AppTheme.lightTheme.textTheme.headlineMedium,
      ),
      Switch(
        value: switchValue, 
        onChanged: (value){
          setState(() {
            switchValue = value;
          });
        }
        ),
    ],
  );
}

Column entradasSlider(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text('Indica que tanto te gustan: ',
      style: AppTheme.lightTheme.textTheme.headlineMedium,),
      Slider(
        min: 0.0,
        max: 10.0,
        activeColor: const Color.fromARGB(255, 0, 183, 255),
        thumbColor: const Color.fromARGB(255, 231, 209, 8),
        inactiveColor:const  Color.fromARGB(204, 8, 101, 163),
        value: sliderValue, 
        divisions: 10,
        label: '${sliderValue.round()}',
        onChanged: (value){
          setState(() {
            sliderValue= value;
            print('se cambio el slider: $sliderValue');
          });
        }),
    ],
  );
}

}