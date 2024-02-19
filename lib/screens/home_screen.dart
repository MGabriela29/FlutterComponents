import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body:  ListView(
        children: const <Widget> [
          ListTile(
            title: Text('Luis ta enfermito :('),
            subtitle: Text('No lo puedo molestar 😥'),
            leading:  Icon(Icons.sick),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
          ListTile(
            title: Text('Zuu esta enfermita :/'),
            subtitle: Text('Ya casi se le quita 👍'),
            leading:  Icon(Icons.sick),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
          ListTile(
            title: Text('Lalo ya no esta enfermo :)'),
            subtitle: Text('Ya vamos por chelitas 🍺'),
            leading:  Icon(Icons.diversity_3_outlined),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
        ],
      ),
    );
  }
}