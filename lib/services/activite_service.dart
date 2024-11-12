import '../models/activite.dart';

class ActivityService {
  List<Activity> _activities = [];

  List<Activity> get activities => _activities;

  void addActivity(Activity activity) {
    _activities.add(activity);
  }

  void removeActivity(String id) {
    _activities.removeWhere((activity) => activity.id == id);
  }
}