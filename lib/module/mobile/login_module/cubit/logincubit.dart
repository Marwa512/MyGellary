// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../model/loginmodel.dart';
import '../../../../shared/constant.dart';
import '../../../../shared/network/endpoints.dart';
import '../../../../shared/network/remote/dio_helper.dart';
import 'loginstate.dart';

class GalleryLoginCubit extends Cubit<GalleryLoginStates> {
  GalleryLoginCubit() : super(GalleryLoginInitialState());
  static GalleryLoginCubit get(context) => BlocProvider.of(context);

  late GalleryLoginModel loginModel;

  void userLogin({required String email, required String password}) {
    emit(GalleryLoginLoadingState());
    DioHelper.postData(url: LOGIN, data: {
      'email': email,
      'password': password,
    }).then((value) {
      loginModel = GalleryLoginModel.fromJson(value.data);
      token = loginModel.token;
      print("Token");
      print(loginModel.token);

      emit(GalleryLoginSucessState(loginModel));
    }).catchError((error) {
      print(error.toString());
      emit(GalleryLoginErrorState(error.toString()));
    });
  }
}
