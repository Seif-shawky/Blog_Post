import 'package:blog_projectbased/core/error/exceptions.dart';
import 'package:supabase/supabase.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUpWithNameEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<String> loginWithEmailPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImplement implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImplement({required this.supabaseClient});
  @override
  Future<String> loginWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<String> signUpWithNameEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {
          'name': name,
        },
      );
      if (response.user == null) {
        throw ServerException('user is null');
      }
      return response.user!.id;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
