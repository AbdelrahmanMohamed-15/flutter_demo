class HomeModel {
  String? profileImage;
  String? location;

  HomeModel({
    this.profileImage,
    this.location,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    HomeModel homeModel = HomeModel();
    homeModel.profileImage = json['profile_Img'];
    homeModel.location = json['location'];
    return homeModel;
  }
}
