class FavouriteModel {
  String? id;
  String? name;
  String? quantity;
  String? price;
  String? dicount;
  String? image;

  FavouriteModel({
    this.id,
    this.name,
    this.quantity,
    this.price,
    this.dicount,
    this.image,
  });

  factory FavouriteModel.fromJson(Map<String, dynamic> json) {
    FavouriteModel productModel = FavouriteModel();
    productModel.id = json['id'];
    productModel.name = json['name'];
    productModel.quantity = json['Quantity'];
    productModel.price = json['Price'];
    productModel.dicount = json['dicount'];
    productModel.image = json['image'];
    return productModel;
  }
}
