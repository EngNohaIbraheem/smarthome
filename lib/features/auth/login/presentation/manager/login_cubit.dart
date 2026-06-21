import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/network/api_service.dart';
import '../../../../../core/network/cache/cache_helper.dart';
import '../../logic/models/login_model.dart';

part 'login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final ApiService apiService = ApiService(Dio());

  /// Form
  final formKey = GlobalKey<FormState>();

  /// Controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  /// Password Visibility
  bool isPasswordHidden = true;

  void togglePasswordVisibility() {
    isPasswordHidden = !isPasswordHidden;
    emit(PasswordVisibilityChanged());
  }

  /// Login
  Future<void> login() async {
    if (!formKey.currentState!.validate()) return;

    emit(LoginLoading());

    try {
      final response = await apiService.postData(
        url: "api/auth/login",
        data: {
          "email": emailController.text.trim(),
          "password": passwordController.text,
        },
      );

      final loginModel = LoginModel.fromJson(response.data);

      await CacheHelper.saveToken(
        loginModel.data?.token ?? '',
      );

      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
// class LoginCubit extends Cubit<LoginState> {
//   LoginCubit() : super(LoginInitial());
//
//   // create login function
//   ApiService apiService = ApiService(Dio());
//   TextEditingController emailC = TextEditingController();
//   TextEditingController passC = TextEditingController();
//
//   void login({required String email, required String pass}) async {
//     emit(LoginLoading());
//
//     apiService.postData(
//         url: "api/auth/login",
//         data: {"email": email, "password": pass}).then((res) async {
//       final model = LoginModel.fromJson(res.data);
//       CacheHelper.saveToken(  model.data?.token ?? '');
//
//       String? token = await CacheHelper.getToken();
//       print("token store in login function $token");
//       emit(LoginSuccess());
//     }).catchError((e) {
//       emit(LoginFailure(e.toString()));
//     });
//   }
// }
