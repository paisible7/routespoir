import 'package:flutter/material.dart';
import '../services/membre_service.dart';
import '../models/membre.dart';

class MemberListScreen extends StatelessWidget {
  final MemberService memberService = MemberService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Membres'),
      ),
      body: ListView.builder(
        itemCount: memberService.members.length,
        itemBuilder: (context, index) {
          Member member = memberService.members[index];
          return ListTile(
            title: Text(member.name),
            subtitle: Text(member.email),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                memberService.removeMember(member.id);
                // Mettre à jour l'interface utilisateur
              },
            ),
          );
        },
      ),
    );
  }
}