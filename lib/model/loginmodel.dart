class GalleryLoginModel {
  String? token;
  UserDataModel? data;
  GalleryLoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];

    //data = (json['data'] != null ? UserDataModel.fromJson(json[data]) : null)!;
    data = json['data'] != null ? UserDataModel.fromJson(json['data']) : null;
  }
}

class UserDataModel {
  int? id;
  String? name;
  String? email;

  UserDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
  }
}
