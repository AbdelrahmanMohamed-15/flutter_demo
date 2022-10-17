// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  String? id;
  String? name;
  String? quantity;
  String? price;
  String? dicount;
  String? image;

  ProductModel({
    this.id,
    this.name,
    this.quantity,
    this.price,
    this.dicount,
    this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    ProductModel productModel = ProductModel();
    productModel.id = json['id'];
    productModel.name = json['name'];
    productModel.quantity = json['Quantity'];
    productModel.price = json['Price'];
    productModel.dicount = json['dicount'];
    productModel.image = json['image'];
    return productModel;
  }
}
