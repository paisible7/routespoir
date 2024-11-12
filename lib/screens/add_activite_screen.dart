import 'package:flutter/material.dart';
import '../services/activite_service.dart';
import '../models/activite.dart';

class AddActivityScreen extends StatelessWidget {
  final ActivityService activityService = ActivityService();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter une Activité'),
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
                final activity = Activity(
                  id: DateTime.now().toString(),
                  title: titleController.text,
                  description: descriptionController.text,
                  date: selectedDate,
                );
                activityService.addActivity(activity);
                Navigator.pop(context);
              },
              child: Text('Ajouter Activité'),
            ),
          ],
        ),
      ),
    );
  }
}