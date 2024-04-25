import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas App'),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            // Tajertas principales
            CardSwipper(),
            // Slider de peliculas
            MovieSlider(),
          ],
        ),
      ),
    );
  }
}
