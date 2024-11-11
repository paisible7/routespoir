import 'package:flutter/material.dart';

class MemberForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Nom'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          ElevatedButton(
            onPressed: () {
              // Logique pour enregistrer le membre
            },
            child: Text('S\'inscrire'),
          ),
        ],
      ),
    );
  }
}