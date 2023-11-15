import 'package:trendy_treasures_seller/models/product/response/product_response.dart';

class RouteArgument {
  final String category;
  final List<Product> products;

  RouteArgument({required this.category, required this.products});
}
