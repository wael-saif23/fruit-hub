import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email, password: password);
    try {
      return Right(
        UserModel.fromFireBaseUser(user),
      );
    }on CustomException catch (e) {
      return Left(
        ServerFailure( e.message),
      );
    }
    catch (e) {
      return Left(
        ServerFailure(" something went wrong , please try again later."),
      );
    }
  }
}
