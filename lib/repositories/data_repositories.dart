import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trendy_treasures_seller/models/address/request/create_address_request.dart';
import 'package:trendy_treasures_seller/models/address/response/create_address_response.dart';
import 'package:trendy_treasures_seller/models/address/response/get_list_address_response.dart';
import 'package:trendy_treasures_seller/models/credit_card/request/create_card_request.dart';
import 'package:trendy_treasures_seller/models/credit_card/response.dart/create_card_response.dart';
import 'package:trendy_treasures_seller/models/credit_card/response.dart/get_my_cards_response.dart';
import 'package:trendy_treasures_seller/models/order/request/create_order_request.dart';
import 'package:trendy_treasures_seller/models/order/request/update_order_request.dart';
import 'package:trendy_treasures_seller/models/order/response/create_order_response.dart';
import 'package:trendy_treasures_seller/models/order/response/get_orders_response.dart';
import 'package:trendy_treasures_seller/models/order/response/update_order_response.dart';
import 'package:trendy_treasures_seller/models/product/request/add_cart_request.dart';
import 'package:trendy_treasures_seller/models/product/request/upload_product_request.dart';
import 'package:trendy_treasures_seller/models/product/response/add_cart_response.dart';
import 'package:trendy_treasures_seller/models/product/response/delete_cart_product_response.dart';
import 'package:trendy_treasures_seller/models/product/response/delete_product_response.dart';
import 'package:trendy_treasures_seller/models/product/response/get_cart_products_response.dart';
import 'package:trendy_treasures_seller/models/product/response/get_products_response.dart';
import 'package:trendy_treasures_seller/models/product/response/upload_product_response.dart';
import 'package:trendy_treasures_seller/models/user/request/login_request.dart';
import 'package:trendy_treasures_seller/models/user/request/register_request.dart';
import 'package:trendy_treasures_seller/models/user/response/login_response.dart';
import 'package:trendy_treasures_seller/models/user/response/register_response.dart';
import 'package:trendy_treasures_seller/networks/rest_client.dart';

@lazySingleton
class DataRepository implements RestClient {
  final dio = Dio();
  RestClient? _client;

  DataRepository() {
    _client = RestClient(dio, baseUrl: 'http://10.0.2.2:8081/api/');
  }

  @override
  Future<RegisterData> signUp({required RegisterRequest request}) {
    return _client!.signUp(request: request);
  }

  @override
  Future<LoginResponse> signIn({required LoginRequest request}) {
    return _client!.signIn(request: request);
  }

  @override
  Future<bool> checkToken({required String token}) {
    return _client!.checkToken(token: token);
  }

  @override
  Future<LoginResponse> getUser({required String token}) {
    return _client!.getUser(token: token);
  }

  @override
  Future<UploadOrUpdateProductResponse> addProduct(
      {required String token, required UploadOrUpdateProductRequest request}) {
    return _client!.addProduct(token: token, request: request);
  }

  @override
  Future<GetProductsResponse> getProducts({required String token}) {
    return _client!.getProducts(token: token);
  }

  @override
  Future<DeleteProductResponse> delProductById(
      {required String id, required String token}) {
    return _client!.delProductById(id: id, token: token);
  }

  @override
  Future<GetProductsResponse> getAllProducts({required String token}) {
    return _client!.getAllProducts(token: token);
  }

  @override
  Future<AddProductToCartResponse> addProductToCart(
      {required AddProductToCartRequest request, required String token}) {
    return _client!.addProductToCart(request: request, token: token);
  }

  @override
  Future<GetCartProductsResponse> getCartProducts({required String token}) {
    return _client!.getCartProducts(token: token);
  }

  @override
  Future<DeleteCartProductResponse> deleteCart({required String token}) {
    return _client!.deleteCart(token: token);
  }

  @override
  Future<DeleteCartProductResponse> deleteCartProductById(
      {required String id, required String token}) {
    return _client!.deleteCartProductById(token: token, id: id);
  }

  @override
  Future<CreateShippingInfoResponse> createAddress(
      {required CreateShippingInfoRequest request, required String token}) {
    return _client!.createAddress(request: request, token: token);
  }

  @override
  Future<ListShippingInfoResponse> getAddress({required String token}) {
    return _client!.getAddress(token: token);
  }

  @override
  Future<CreateCardResponse> createCard(
      {required CreateCardRequest request, required String token}) {
    return _client!.createCard(request: request, token: token);
  }

  @override
  Future<GetMyCardsResponse> getMyCards({required String token}) {
    return _client!.getMyCards(token: token);
  }

  @override
  Future<CreateOrderResponse> createOrder(
      {required CreateOrderRequest request, required String token}) {
    return _client!.createOrder(request: request, token: token);
  }

  @override
  Future<GetMyOrdersResponse> getMyOrders({required String token}) {
    return _client!.getMyOrders(token: token);
  }

  @override
  Future<GetMyOrdersResponse> getOrdersAdmin({required String token}) {
    return _client!.getOrdersAdmin(token: token);
  }

  @override
  Future<UpdateOrderResponse> updateOrderStatus(
      {required UpdateOrderRequest request, required String token}) {
    return _client!.updateOrderStatus(request: request, token: token);
  }

  @override
  Future<UploadOrUpdateProductResponse> updateProductById(
      {required String id,
      required UploadOrUpdateProductRequest request,
      required String token}) {
    return _client!.updateProductById(id: id, request: request, token: token);
  }
}
