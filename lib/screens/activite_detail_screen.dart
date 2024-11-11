import 'package:flutter/material.dart';
import '../models/activite.dart';

class ActivityDetailScreen extends StatelessWidget {
  final Activity activity;

  ActivityDetailScreen({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(activity.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(activity.description),
            SizedBox(height: 16),
            Text(
              'Date:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(activity.date.toLocal().toString().split(' ')[0]),
          ],
        ),
      ),
    );
  }
}