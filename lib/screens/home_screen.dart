// Archivo: lib/home_screen.dart

import 'package:flutter/material.dart';
// El siguiente import parece innecesario si PlantsCard está en este archivo
// import 'package:plantsbook/screens/PlantsCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PlantsCard(context),
          PlantsCard(context),
          PlantsCard(context),
        ], // children
      ), // Column
    ); // Scaffold
  } // <--- Este cierre faltaba
}

Widget PlantsCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: MediaQuery.of(context).size.width,
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://mexico.vexassets.com/images/ids/240150/frontal-3106.jpg?width=360&height=360&quality=80&fm=webp',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 26),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plant Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      color: Colors.brown,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Gabriela Zuniga',
                    style: TextStyle(fontSize: 16, fontFamily: 'Quicksand'),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
