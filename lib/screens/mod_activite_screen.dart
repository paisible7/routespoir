import 'package:flutter/material.dart';
import '../models/activite.dart';
import '../services/activite_service.dart';

class EditActivityScreen extends StatelessWidget {
  final Activity activity;
  final ActivityService activityService; // Passer l'instance via le constructeur
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  DateTime selectedDate;

  EditActivityScreen({required this.activity, required this.activityService}) 
      : selectedDate = activity.date;

  @override
  Widget build(BuildContext context) {
    // Initialiser les contrôleurs avec les valeurs existantes
    titleController.text = activity.title;
    descriptionController.text = activity.description;

    return Scaffold(
      appBar: AppBar(
        title: Text('Modifier l\'Activité'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Titre'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20),
            Text("Date: ${selectedDate.toLocal()}".split(' ')[0]),
            ElevatedButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null && pickedDate != selectedDate) {
                  selectedDate = pickedDate;
                }
              },
              child: Text('Choisir une date'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Mettre à jour l'activité
                final updatedActivity = Activity(
                  id: activity.id, // Garder le même ID
                  title: titleController.text,
                  description: descriptionController.text,
                  date: selectedDate,
                );

                // Utiliser une méthode de mise à jour
                activityService.updateActivity(updatedActivity);

                // Retourner à la liste des activités
                Navigator.pop(context);
              },
              child: Text('Enregistrer les Modifications'),
            ),
          ],
        ),
      ),
    );
  }
}