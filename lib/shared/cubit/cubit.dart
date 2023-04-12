// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina/layout/galleryLayout.dart';

import '../../../shared/constant.dart';
import '../../../shared/network/endpoints.dart';
import '../../../shared/network/remote/dio_helper.dart';
import 'states.dart';

class GalleryGetCubit extends Cubit<GalleryGetStates> {
  GalleryGetCubit() : super(GalleryGetInitialState());
  static GalleryGetCubit get(context) => BlocProvider.of(context);
  bool upload = false;
  late List<String> image;
  void galleryGet() {
    emit(GalleryGetLoadingState());

    DioHelper.getData(url: GALLERY).then((value) {
      value.data.foreach((value) {
        image.add(value);
      });
      emit(GalleryGetSucessState());
    }).catchError((error) {
      print(error.toString());

      emit(GalleryGetErrorState(error));
    });
  }

  void uploadImage({required String img}) {
    emit(GalleryUploadLoadingState());
    DioHelper.postData(url: UPLOAD, data: img).then((value) {
      emit(GalleryUploadSucessState());
    }).catchError((error) {
      print(error.toString());

      emit(GalleryUploadErrorState(error));
    });
  }

  void uploadGallery() {
    upload = !upload;
    emit(GalleryUploadSucessState());
  }
}
