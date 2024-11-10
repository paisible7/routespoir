import 'package:flutter/material.dart';
import 'form_membre_screen.dart';
import 'calendrier_screen.dart';
import 'liste_membre_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenue au Groupe Scout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberFormScreen()),
                );
              },
              child: Text('S\'inscrire'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarScreen()),
                );
              },
              child: Text('Calendrier des Activités'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberListScreen()),
                );
              },
              child: Text('Liste des Membres'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddActivityScreen()),
                );
              },
              child: Text('Ajouter une Activité'),
            ),
          ],
        ),
      ),
    );
  }
}
