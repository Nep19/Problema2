// Archivo: lib/main.dart

import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Color,
        Colors,
        DefaultTabController,
        Icon,
        Icons,
        MaterialApp,
        Scaffold,
        StatelessWidget,
        Tab,
        TabBar,
        TabBarView,
        Text,
        TextStyle,
        Widget,
        runApp,
        Center;
import 'package:ejercicio2/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Libro de las Plantas',
      home: PlantsBook(),
    );
  }
}

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            'Medicina Natural',
            style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.question_mark), text: 'Question'),
              Tab(icon: Icon(Icons.people), text: 'People'),
              Tab(icon: Icon(Icons.info), text: 'Info'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            Center(child: const Text('Preguntas')), // Placeholder
            Center(child: const Text('Personas')), // Placeholder
            Center(child: const Text('Información')), // Placeholder
          ],
        ),
      ),
    );
  }
}
