import 'package:flutter/material.dart';
import '../widgets/form_membre.dart';

class MemberFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulaire d\'Inscription'),
      ),
      body: MemberForm(),
    );
  }
}