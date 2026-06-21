part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

// abstract class LoginState {}

class LoginInitial extends LoginState {}

class PasswordVisibilityChanged extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {

  LoginSuccess();
}

class LoginFailure extends LoginState {
  final String message;

  LoginFailure(this.message);
}
//final class LoginInitial extends LoginState {}

//final class LoginLoading extends LoginState {}
//final class LoginSuccess extends LoginState {}
//final class LoginFailure extends LoginState {
  //final String msg;
 // LoginFailure(this.msg);
//}
