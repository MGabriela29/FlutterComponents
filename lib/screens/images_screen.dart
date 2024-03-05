import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: ListView(
        children: [
          cardImage1(),
          image2(),
        ],
      )
    );
  }
  Card cardImage1(){
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          ),
          margin: const EdgeInsets.all(15),
          elevation: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Column(children: [
          const SizedBox(
            height: 300.0,
            width: 300.0,
            child:  Image(
              image: AssetImage('assets/img/logoInt.png'),
              ),
          ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Logo de WaterCheck',
                style: AppTheme.lightTheme.textTheme.headlineSmall,
              ),
            )
        ],)
        ) ,
    );
  }
  SizedBox image2(){
    return SizedBox(
      height: 200.0,
      width: 200.0,
      child:  Image.network('https://juegoyaprendo.guanajuato.gob.mx/imagenes/cuida/CUIDADO%20DEL%20AGUA/Enmascarar%20grupo%2032.png'),
    );
  }
  Stack imageFade(){
    return Stack(
      children: <Widget>[
        const Center(
        child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, 
            image: 'https://juegoyaprendo.guanajuato.gob.mx/imagenes/cuida/CUIDADO%20DEL%20AGUA/Enmascarar%20grupo%2032.png')

        )
      ],
    );
  }
}