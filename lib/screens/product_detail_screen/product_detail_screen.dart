import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';
import 'package:trendy_treasures_seller/models/product/response/product_response.dart';
import 'package:trendy_treasures_seller/screens/product_detail_screen/widgets/choose_color_widget.dart';
import 'package:trendy_treasures_seller/screens/product_detail_screen/widgets/choose_size_widget.dart';
import 'package:trendy_treasures_seller/widgets/app_bar_widget.dart';
import 'package:trendy_treasures_seller/widgets/counter_widget.dart';
import 'package:trendy_treasures_seller/widgets/subtitle_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/product_detail_cubit.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.product});
  final Product product;

  static BlocProvider<ProductDetailCubit> provider(Product product) {
    return BlocProvider(
      create: (context) {
        return ProductDetailCubit();
      },
      child: ProductDetailScreen(
        product: product,
      ),
    );
  }

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final PageController _pageController = PageController();
  int quantity = 1;
  late int indexColorChoose = 0;
  List<ProductVariant> productVariants = [];

  @override
  void initState() {
    productVariants = widget.product.productVariants;
    context.read<ProductDetailCubit>().setAvailable(
        productVariants: productVariants, category: widget.product.category);
    super.initState();
  }

  void controllerQuantity(bool isIncrease, int available) {
    if (isIncrease) {
      if (quantity < available) {
        quantity++;
        setState(() {});
      }
    } else {
      if (quantity > 1) {
        quantity--;
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    for (var element in productVariants) {
      log(element.toRawJson());
    }

    return SafeArea(
      child: BlocBuilder<ProductDetailCubit, ProductDetailState>(
        builder: (context, state) {
          return Scaffold(
            body: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 1.6,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _pageController,
                          itemBuilder: (context, index) {
                            return Hero(
                              tag: 'widget.product.images[0]',
                              child: CachedNetworkImage(
                                imageUrl: widget.product.images[index],
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  // height: 110,
                                  // width: double.infinity,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                              // Image.network(
                              //   widget.product.images[index],
                              //   fit: BoxFit.cover,
                              // ),
                            );
                          },
                          itemCount: widget.product.images.length,
                        ),
                        const AppBarWidget(),
                        Container(
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.sizeOf(context).height / 10,
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SmoothPageIndicator(
                              controller: _pageController, // PageController
                              count: widget.product.images.length,
                              effect: const ScaleEffect(
                                // fixedCenter: true,
                                activePaintStyle: PaintingStyle.stroke,
                                activeDotColor: Colors.white,
                                dotColor: Colors.white,

                                dotWidth: 13,
                                dotHeight: 13,
                              ), // your preferred effect
                              onDotClicked: (index) {},
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: MediaQuery.sizeOf(context).height / 10,
                          right: 16,
                          child: const CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.sizeOf(context).height / 1.8,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.only(top: 25),
                      height: MediaQuery.sizeOf(context).height,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TitleTextWidget(
                                        title: widget.product.productBrand,
                                        fontSize: 20,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        widget.product.productName,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(children: [
                                        Row(
                                          children: List.generate(
                                            5,
                                            (index) => const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        const Text(
                                          '(320 Review)',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CounterWidget(
                                        onAction: controllerQuantity,
                                        quantity: quantity,
                                        available: state.data!.available!,
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      TitleTextWidget(
                                        title:
                                            '${state.data!.available ?? 0} Available in stock',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TitleTextWidget(
                                      title: 'Size',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    ChooseSizeWidget(
                                      productVariants: productVariants,
                                      category: widget.product.category,
                                      indexSize: state.data!.indexSize,
                                    ),
                                  ],
                                ),
                                ChooseColorWidget(
                                  productVariants: productVariants,
                                  indexColor: state.data!.indexColor,
                                  category: widget.product.category,
                                )
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TitleTextWidget(
                                    title: 'Description',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    widget.product.description,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SubTitleWidget(
                                            subTitle: 'Total Price',
                                            fontSize: 10,
                                          ),
                                          TitleTextWidget(
                                            title:
                                                '\$${widget.product.price.toDouble() * quantity}',
                                            fontSize: 20,
                                          )
                                        ],
                                      ),
                                      // SizedBox(
                                      //   width:
                                      //       MediaQuery.sizeOf(context).width /
                                      //           2,
                                      //   child: CustomButtonWidget(
                                      //     backgroundColor: Colors.black,
                                      //     textColor: Colors.white,
                                      //     title: '   Add to cart',
                                      //     onClick: () async {
                                      //       if (state.data!.available! <= 0) {
                                      //         AwesomeDialog(
                                      //                 context: context,
                                      //                 dialogType:
                                      //                     DialogType.info,
                                      //                 animType:
                                      //                     AnimType.rightSlide,
                                      //                 title: 'Information',
                                      //                 desc:
                                      //                     'product is sold out',
                                      //                 btnOkOnPress: () {})
                                      //             .show();
                                      //       } else {
                                      //         await context
                                      //             .read<ProductDetailCubit>()
                                      //             .addToCart(
                                      //               context: context,
                                      //               quantity: quantity,
                                      //               product: widget.product,
                                      //               category:
                                      //                   widget.product.category,
                                      //             );
                                      //       }
                                      //     },
                                      //     iconData: Icons.shopping_bag_outlined,
                                      //     iconColor: Colors.white,
                                      //   ),
                                      // ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
