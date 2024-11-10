import 'package:flutter/material.dart';
import '../widgets/calendrier_widget.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendrier des Activités'),
      ),
      body: CalendarWidget(),
    );
  }
}