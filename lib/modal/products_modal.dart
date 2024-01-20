
class ProductModel{
  
  final int id;
  final double rating;
  final String title;
  final String subtitle;
  final String image;
  final double price;
  final String categoryTitle;

  ProductModel({
    required this.id,
    required this.rating,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.price,
    required this.categoryTitle,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      rating: json['rating'] as double,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      price: json['price'] as double,
      categoryTitle: json['categoryTitle'] as String,
    );
  }
}

