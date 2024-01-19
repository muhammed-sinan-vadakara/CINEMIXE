import 'package:cinemixe/core/exceptions/authentication/auth_failed_exception.dart';
import 'package:cinemixe/feactures/authenthication/domain/repositories/auth_repository.dart';

final class ResetPasswordbyEmailUsecase {
  final AuthRepository repository;
  ResetPasswordbyEmailUsecase({required this.repository});

  Future<void> call(String email) async {
    try {
      await repository.resetPasswordbyemail(email);
    } on Exception {
      throw AuthenticationFailedException('Cannot send the reset password');
    }
  }
}
