import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
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

return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scroll'),
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