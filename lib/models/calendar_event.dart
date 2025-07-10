import 'task_model.dart';

class CalendarEvent {
  final String id;
  final String title;
  final DateTime date;
  final bool isCompleted;

  CalendarEvent({
    required this.id,
    required this.title,
    required this.date,
    this.isCompleted = false,
  });

  factory CalendarEvent.fromTaskModel(TaskModel task) {
    return CalendarEvent(
      id: task.id,
      title: task.title,
      date: task.dueDate,
      isCompleted: task.isCompleted,
    );
  }
} 