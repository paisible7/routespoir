import 'package:flutter/material.dart';
import '../services/activite_service.dart';
import 'activite_detail_screen.dart';
import 'mod_activite_screen.dart'; // Importation l'écran d'édition

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
            trailing: Row(
              mainAxisSize:
                  MainAxisSize.min, // Pour que le Row prenne la taille minimale
              children: [
                Text(activity.date
                    .toLocal()
                    .toString()
                    .split(' ')[0]), // Affiche la date
                SizedBox(width: 8), // Espacement entre la date et le menu
                PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'edit',
                      child: Text('Modifier'),
                    ),
                    PopupMenuItem(
                      value: 'delete',
                      child: Text('Supprimer'),
                    ),
                  ],
                  onSelected: (value) {
                    if (value == 'edit') {
                      // Naviguer vers l'écran d'édition
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditActivityScreen(
                              activity: activity,
                              activityService: activityService),
                        ),
                      );
                    } else if (value == 'delete') {
                      // Logique pour supprimer l'activité
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Confirmer la suppression'),
                          content: Text(
                              'Êtes-vous sûr de vouloir supprimer cette activité ?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                // Supprimer l'activité
                                activityService.removeActivity(activity.id);
                                Navigator.of(context)
                                    .pop(); // Fermer la boîte de dialogue
                              },
                              child: Text('Oui'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pop(); // Fermer la boîte de dialogue
                              },
                              child: Text('Non'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
            onTap: () {
              // Naviguer vers l'écran de détails
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ActivityDetailScreen(activity: activity),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
