import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/appwrite_constants.dart';

final clientProvider = Provider((ref) {
  Client client = Client();
  return client
      .setEndpoint(AppwriteConstants.endPoint)
      .setProject(AppwriteConstants.projectId)
      .setSelfSigned(status: true);
});

final accountProvider = Provider((ref) {
  final client = ref.watch(clientProvider);
  return Account(client);
});

final databaseProvider = Provider((ref) {
  final client = ref.watch(clientProvider);
  return Databases(client);
}); 