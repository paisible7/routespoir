import 'package:flutter/material.dart';
import 'member_form_screen.dart';
import 'calendar_screen.dart';

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
          ],
        ),
      ),
    );
  }
}