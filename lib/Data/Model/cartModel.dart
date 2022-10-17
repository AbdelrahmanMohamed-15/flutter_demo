// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductCartModel {
  String? id;
  String? name;
  String? quantity;
  String? price;
  String? image;
  String? cartQuantity;
  // double? total;

  ProductCartModel({
    this.id,
    this.name,
    this.quantity,
    this.price,
    this.image,
    this.cartQuantity,
    // this.total,
  });

  factory ProductCartModel.fromJson(Map<String, dynamic> json) {
    ProductCartModel cartModel = ProductCartModel();
    cartModel.id = json['id'];
    cartModel.name = json['name'];
    cartModel.quantity = json['quantity'];
    cartModel.price = json['price'];
    cartModel.image = json['image'];
    cartModel.cartQuantity = json['cartQuantity'];
    // cartModel.total = json['total'];
    return cartModel;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "quantity": quantity,
        "price": price,
        "image": image,
        "cartQuantity": cartQuantity,
        // "total": total,
      };
}
