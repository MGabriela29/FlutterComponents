import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';

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
  int radioSelected=0;
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;
  int indexNavigation = 0 ;

  openScreen(int index, BuildContext context){//variavle buildcontext puede que no la pida pero es mejor enviarla
  MaterialPageRoute ruta = MaterialPageRoute( // variable para la ruta
    builder: (context) => const HomeScreen());
  switch(index){
    case 0: 
      ruta = MaterialPageRoute( // variable para la ruta
      builder: (context) => const HomeScreen());
      break;
    case 1: 
      ruta = MaterialPageRoute( // variable para la ruta
      builder: (context) => const InfiniteScrollScreen());  
      break;
    case 2:
      ruta = MaterialPageRoute( // variable para la ruta
      builder: (context) => const NotificationsScreen());
      break;
    case 3: 
      ruta = MaterialPageRoute( // variable para la ruta
      builder: (context) => const ImagesScreen());    
      break;
  }
  setState(() {
    indexNavigation = index; 
    Navigator.push(context, ruta);
  });
  }

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
            entradaRadio(),
            Text(
              'El Checkbottom',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
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
        currentIndex: indexNavigation,
          unselectedItemColor: Colors.amber,
          selectedItemColor: Colors.blue,
          onTap: (index)=> openScreen(index, context),//para ver en que ventana estoy // openScreen metodo es para las rutas
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home", ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_comment),
              label: 'Comentarios'),
               BottomNavigationBarItem(
               icon: Icon(Icons.exit_to_app_outlined),
               label: "notificaciones",
              ),
              BottomNavigationBarItem(
               icon: Icon(Icons.exit_to_app_outlined),
               label: "images",
              ),
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

Column entradaRadio(){
  return Column(
    children:[
      Text('Escoge una opción',
      style: AppTheme.lightTheme.textTheme.headlineLarge,),
      ListTile(
        title: Text('Kotlin',
        style: AppTheme.lightTheme.textTheme.headlineMedium,),
        leading: Transform.scale(
          scale: 1.5,
          child: Radio(
            value: 1,//id de la opcion seleccionada 
            groupValue: radioSelected,
            onChanged: (value){
              setState(() {
                radioSelected= value!;
                print('Seleccion del botón radio: $radioSelected');
              });
            },
          ),
        ),
      ),
      ListTile(
        title: Text('Java',
        style: AppTheme.lightTheme.textTheme.headlineMedium,),
        leading: Transform.scale(
          scale: 1.5,
          child: Radio(
            value: 2,//id de la opcion seleccionada 
            groupValue: radioSelected,
            onChanged: (value){
              setState(() {
                radioSelected= value!;
                print('Seleccion del botón radio: $radioSelected');
              });
            },
          ),
        ),
      ),
    ]
  );
}

 Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Navegador',
        style: AppTheme.lightTheme.textTheme.bodySmall,),
        Transform.scale(
          scale: 1.5,          child: Checkbox(
            value: checkboxValue1,
            onChanged: (value){
              setState(() {
                checkboxValue1 = value!;
              });
            }),
        ),
        Text('Emulador',
        style: AppTheme.lightTheme.textTheme.bodySmall,),
        Transform.scale(
          scale: 1.5,          child: Checkbox(
            value: checkboxValue2,
            onChanged: (value){
              setState(() {
                checkboxValue2 = value!;
              });
            }),
        ),
        Text('Dispositivo fisico',
        style: AppTheme.lightTheme.textTheme.bodySmall,),
        Transform.scale(
          scale: 1.5,          child: Checkbox(
            value: checkboxValue3,
            onChanged: (value){
              setState(() {
                checkboxValue3 = value!;
              });
            }),
        ),
      ],
    );
  }

}