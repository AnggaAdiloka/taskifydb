import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/providers/appwrite_provider.dart';
import '../models/user_model.dart';

final authRepositoryProvider = Provider((ref) {
  return AuthRepository(
    account: ref.watch(accountProvider),
  );
});

class AuthRepository {
  final Account _account;
  
  AuthRepository({
    required Account account,
  }) : _account = account;

  Future<User> signup({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await _account.create(
        userId: ID.unique(),
        email: email,
        password: password,
        name: name,
      );
      return user;
    } catch (e) {
      rethrow;
    }
  }

  Future<Session> login({
    required String email,
    required String password,
  }) async {
    try {
      final session = await _account.createEmailSession(
        email: email,
        password: password,
      );
      return session;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await _account.deleteSession(sessionId: 'current');
    } catch (e) {
      rethrow;
    }
  }

  Future<User?> currentUser() async {
    try {
      return await _account.get();
    } catch (e) {
      return null;
    }
  }
} 