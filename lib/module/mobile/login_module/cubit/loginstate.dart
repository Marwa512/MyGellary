// ignore_for_file: camel_case_types

import '../../../../model/loginmodel.dart';

abstract class GalleryLoginStates {
  var loginModel;
}

class GalleryLoginInitialState extends GalleryLoginStates {}

class GalleryLoginLoadingState extends GalleryLoginStates {}

class GalleryLoginSucessState extends GalleryLoginStates {
  final GalleryLoginModel loginModel;
  GalleryLoginSucessState(this.loginModel);
}

class GalleryLoginErrorState extends GalleryLoginStates {
  final String error;

  GalleryLoginErrorState(this.error);
}
