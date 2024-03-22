import 'package:flutter/material.dart';
import 'package:practica3/models/data.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final Data datos;
  const DataScreen({super.key, required this.datos});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
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
    String? cupcakes;
if(widget.datos.gusto! == true){
    cupcakes = 'Si';
} else{
    cupcakes = 'No';
}

String? res;

if(widget.datos.emulador! == true || widget.datos.web! == true || widget.datos.phone! == true){
  res ='emulador web y telefono';
} else {

}


    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Screen'),
      ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tu nombre es: ',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              Text(widget.datos.nombre!,
              style:TextStyle( color:Colors.blueGrey.shade300, fontSize: 30)), 
              Text(
                '${widget.datos.nombre} respondio la pregunta 1: ',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              Text(widget.datos.gusto!.toString(),
              style:TextStyle( color:Colors.blueGrey.shade300, fontSize: 30)),
               Text(
                'Indicador de la pregunta 1: ',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              Text(widget.datos.califGusto!.toString(),
              style:TextStyle( color:Colors.blueGrey.shade300, fontSize: 30)),
               Text(
                'La opción que escogiste fue:  ',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              Text(cupcakes, 
              style:TextStyle( color:Colors.blueGrey.shade300, fontSize: 30)),
               Text(
                'Tu elegiste estas opciones:  ',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),

              Text(res!)
            ],
          ),
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
}