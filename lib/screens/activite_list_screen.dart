import 'package:flutter/material.dart';
import '../services/activite_service.dart';

class ActivityListScreen extends StatelessWidget {
  final ActivityService activityService = ActivityService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Activités'),
      ),
      body: ListView.builder(
        itemCount: activityService.activities.length,
        itemBuilder: (context, index) {
          final activity = activityService.activities[index];
          return ListTile(
            title: Text(activity.title),
            subtitle: Text(activity.description),
            trailing: Text(activity.date.toLocal().toString().split(' ')[0]), // Affiche la date
            onTap: () {
              // Logique pour afficher les détails de l'activité ou pour modifier
            },
          );
        },
      ),
    );
  }
}