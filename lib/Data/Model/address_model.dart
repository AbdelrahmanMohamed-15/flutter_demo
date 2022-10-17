// ignore_for_file: public_member_api_docs, sort_constructors_first
class AddressModel {
  String? type;
  String? street;
  String? details;
  String? img;

  AddressModel({
    this.type,
    this.street,
    this.details,
    this.img,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    AddressModel addressModel = AddressModel();
    addressModel.type = json['type'];
    addressModel.street = json['street'];
    addressModel.details = json['details'];
    addressModel.img = json['Img'];
    return addressModel;
  }
}
