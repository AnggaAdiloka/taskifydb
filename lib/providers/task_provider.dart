import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/task_model.dart';
import '../repositories/task_repository.dart';
import '../providers/auth_provider.dart';

final taskListProvider = StateNotifierProvider<TaskNotifier, AsyncValue<List<TaskModel>>>((ref) {
  final authState = ref.watch(authStateProvider);
  
  // Return empty state jika user tidak login
  if (authState.value == null) {
    return TaskNotifier(
      taskRepository: ref.watch(taskRepositoryProvider),
      userId: '',
    );
  }
  
  return TaskNotifier(
    taskRepository: ref.watch(taskRepositoryProvider),
    userId: authState.value?.id ?? '',
  );
});

class TaskNotifier extends StateNotifier<AsyncValue<List<TaskModel>>> {
  final TaskRepository _taskRepository;
  final String _userId;
  
  TaskNotifier({
    required TaskRepository taskRepository,
    required String userId,
  }) : _taskRepository = taskRepository,
       _userId = userId,
       super(const AsyncValue.data([])) {  // Start with empty list
    if (userId.isNotEmpty) {
      loadTasks();
    }
  }

  Future<void> loadTasks() async {
    if (_userId.isEmpty) {
      state = const AsyncValue.data([]);
      return;
    }
    
    try {
      state = const AsyncValue.loading();
      final tasks = await _taskRepository.getTasks(_userId);
      state = AsyncValue.data(tasks);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> createTask(TaskModel task) async {
    if (_userId.isEmpty) return;
    
    try {
      final newTask = task.copyWith(userId: _userId);
      await _taskRepository.createTask(newTask);
      await loadTasks();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> toggleTaskCompletion(TaskModel task) async {
    if (_userId.isEmpty) return;
    
    try {
      final updatedTask = task.copyWith(isCompleted: !task.isCompleted);
      await _taskRepository.updateTask(updatedTask);
      await loadTasks();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> deleteTask(String taskId) async {
    if (_userId.isEmpty) return;
    
    try {
      await _taskRepository.deleteTask(taskId);
      await loadTasks();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> updateTask(TaskModel task) async {
    if (_userId.isEmpty) return;
    
    try {
      final updatedTask = task.copyWith(userId: _userId);
      await _taskRepository.updateTask(updatedTask);
      await loadTasks();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
} 