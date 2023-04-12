// ignore_for_file: camel_case_types

abstract class GalleryGetStates {}

class GalleryGetInitialState extends GalleryGetStates {}

class GalleryGetLoadingState extends GalleryGetStates {}

class GalleryGetSucessState extends GalleryGetStates {}

class GalleryGetErrorState extends GalleryGetStates {
  final String error;

  GalleryGetErrorState(this.error);
}

class GalleryUploadSucessState extends GalleryGetStates {}

class GalleryUploadLoadingState extends GalleryGetStates {}

class GalleryUploadErrorState extends GalleryGetStates {
  final String error;

  GalleryUploadErrorState(this.error);
}
