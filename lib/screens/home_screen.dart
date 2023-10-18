import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_superhero/providers/superheros_providers.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //colocamos la intancia de movies provider
   // final moviesProvider = Provider.of<MoviesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //sombra
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          )
        ],
        title: const Center(child: Text('WIKI de superheroes y villanos')),
      ),
      body: Column(
   
      ),
    );
  }
}