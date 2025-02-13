import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password , String name);
  // Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword(String email, String password);
  // Future<void> signOut();
  // Future<Either<Failure, UserEntity>> getCurrentUser();
}