import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/constants/appwrite_constants.dart';
import '../core/providers/appwrite_provider.dart';
import '../models/task_model.dart';

final taskRepositoryProvider = Provider((ref) {
  return TaskRepository(
    databases: ref.watch(databaseProvider),
  );
});

class TaskRepository {
  final Databases _databases;
  
  TaskRepository({
    required Databases databases,
  }) : _databases = databases;

  Future<List<TaskModel>> getTasks(String userId) async {
    try {
      final response = await _databases.listDocuments(
        databaseId: AppwriteConstants.databaseId,
        collectionId: AppwriteConstants.tasksCollection,
        queries: [
          Query.equal('userId', userId),
          Query.orderDesc('dueDate'),
        ],
      );

      return response.documents.map((doc) => TaskModel.fromMap(doc.data)).toList();
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> createTask(TaskModel task) async {
    try {
      await _databases.createDocument(
        databaseId: AppwriteConstants.databaseId,
        collectionId: AppwriteConstants.tasksCollection,
        documentId: ID.unique(),
        data: task.toMap(),
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> updateTask(TaskModel task) async {
    try {
      await _databases.updateDocument(
        databaseId: AppwriteConstants.databaseId,
        collectionId: AppwriteConstants.tasksCollection,
        documentId: task.id,
        data: task.toMap(),
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> deleteTask(String taskId) async {
    try {
      await _databases.deleteDocument(
        databaseId: AppwriteConstants.databaseId,
        collectionId: AppwriteConstants.tasksCollection,
        documentId: taskId,
      );
    } catch (e) {
      throw _handleError(e);
    }
  }

  String _handleError(dynamic e) {
    if (e is AppwriteException) {
      return e.message ?? 'An error occurred with Appwrite';
    }
    return 'An unexpected error occurred';
  }
} 