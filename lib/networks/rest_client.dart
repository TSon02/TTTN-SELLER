import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
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
part 'rest_client.g.dart';

@RestApi(baseUrl: "http://10.0.2.2:8081/api/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

//Auth
  @POST('/signup')
  Future<RegisterData> signUp({
    @Body() required RegisterRequest request,
  });

  @POST('/signin')
  Future<LoginResponse> signIn({
    @Body() required LoginRequest request,
  });

  @GET('/tokenIsValid')
  Future<bool> checkToken({@Header("x-auth-token") required String token});

  @GET('/getUser')
  Future<LoginResponse> getUser(
      {@Header("x-auth-token") required String token});

  // Admin

  //add product
  @POST('/admin/add-product')
  Future<UploadOrUpdateProductResponse> addProduct({
    @Header("x-auth-token") required String token,
    @Body() required UploadOrUpdateProductRequest request,
  });

  // get product
  @GET('/admin/get-products')
  Future<GetProductsResponse> getProducts(
      {@Header("x-auth-token") required String token});

//update product
  @PUT('/admin/products/{id}')
  Future<UploadOrUpdateProductResponse> updateProductById(
      {@Path() required String id,
      @Body() required UploadOrUpdateProductRequest request,
      @Header("x-auth-token") required String token});

  // delete product by id
  @DELETE('/admin/delete-product/{id}')
  Future<DeleteProductResponse> delProductById({
    @Path() required String id,
    @Header("x-auth-token") required String token,
  });

// Products

  //get product home
  @GET('/products')
  Future<GetProductsResponse> getAllProducts(
      {@Header("x-auth-token") required String token});

  @POST('/cart')
  Future<AddProductToCartResponse> addProductToCart({
    @Body() required AddProductToCartRequest request,
    @Header("x-auth-token") required String token,
  });

  @GET('/cart')
  Future<GetCartProductsResponse> getCartProducts({
    @Header("x-auth-token") required String token,
  });

  @DELETE('/cart/{id}')
  Future<DeleteCartProductResponse> deleteCartProductById({
    @Path() required String id,
    @Header("x-auth-token") required String token,
  });

  @DELETE('/cart')
  Future<DeleteCartProductResponse> deleteCart({
    @Header("x-auth-token") required String token,
  });

  // address
  @POST('/shipping')
  Future<CreateShippingInfoResponse> createAddress({
    @Body() required CreateShippingInfoRequest request,
    @Header("x-auth-token") required String token,
  });

  @GET('/shipping')
  Future<ListShippingInfoResponse> getAddress({
    @Header("x-auth-token") required String token,
  });

  //credit card

  @POST('/card')
  Future<CreateCardResponse> createCard({
    @Body() required CreateCardRequest request,
    @Header("x-auth-token") required String token,
  });

  @GET('/card')
  Future<GetMyCardsResponse> getMyCards({
    @Header("x-auth-token") required String token,
  });

// order
  @POST('/order')
  Future<CreateOrderResponse> createOrder({
    @Body() required CreateOrderRequest request,
    @Header("x-auth-token") required String token,
  });

  @GET('/order')
  Future<GetMyOrdersResponse> getMyOrders({
    @Header("x-auth-token") required String token,
  });

// admin orders

  @GET('/admin/orders')
  Future<GetMyOrdersResponse> getOrdersAdmin({
    @Header("x-auth-token") required String token,
  });

  @PATCH('/admin/orders')
  Future<UpdateOrderResponse> updateOrderStatus({
    @Body() required UpdateOrderRequest request,
    @Header("x-auth-token") required String token,
  });
}
