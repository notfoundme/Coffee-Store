
class CategoryModel {
  final String title;
  final String route;

  CategoryModel({
    required this.title,
    required this.route,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      title: json['title'] as String,
      route: json['route'] as String,
    );
  }
}
