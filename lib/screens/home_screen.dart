import 'package:flutter/material.dart';
import 'form_membre_screen.dart';
import 'calendrier_screen.dart';
import 'liste_membre_screen.dart';
import 'add_activite_screen.dart';
import 'activite_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenue au Groupe Scout'),
      ),
      body: Center(
        child: SingleChildScrollView( // Permet de faire défiler si nécessaire
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Utiliser une Card pour regrouper les boutons
              Card(
                margin: EdgeInsets.all(16),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
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
                      SizedBox(height: 10), // Espacement entre les boutons
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CalendarScreen()),
                          );
                        },
                        child: Text('Calendrier des Activités'),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MemberListScreen()),
                          );
                        },
                        child: Text('Liste des Membres'),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AddActivityScreen()),
                          );
                        },
                        child: Text('Ajouter une Activité'),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ActivityListScreen()),
                          );
                        },
                        child: Text('Liste des Activités'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}