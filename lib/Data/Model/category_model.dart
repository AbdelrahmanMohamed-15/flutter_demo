class CategoryModel {
  String? catName;
  String? catImage;

  CategoryModel({
    this.catName,
    this.catImage,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    CategoryModel categoryModel = CategoryModel();
    categoryModel.catName = json['name'];
    categoryModel.catImage = json['Img'];
    return categoryModel;
  }
}
