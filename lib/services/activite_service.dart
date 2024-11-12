import '../models/activite.dart';

class ActivityService {
  static final ActivityService _instance = ActivityService._internal();

  factory ActivityService() => _instance;

  ActivityService._internal();

  List<Activity> _activities = [];

  List<Activity> get activities => _activities;

  void addActivity(Activity activity) {
    _activities.add(activity);
  }

  void updateActivity(Activity updatedActivity) {
  final index = _activities.indexWhere((activity) => activity.id == updatedActivity.id);
  if (index != -1) {
    _activities[index] = updatedActivity;
  }
}

  void removeActivity(String id) {
    _activities.removeWhere((activity) => activity.id == id);
  }
}
