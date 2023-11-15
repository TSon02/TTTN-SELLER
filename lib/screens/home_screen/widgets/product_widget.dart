import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures_seller/models/product/response/product_response.dart';
import 'package:trendy_treasures_seller/screens/product_detail_screen/product_detail_screen.dart';
import 'package:trendy_treasures_seller/widgets/subtitle_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: ProductDetailScreen.provider(product),
          withNavBar: false, // OPTIONAL VALUE. True by default.
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
        // log('click clicck');
        // log(product.toRawJson());
      },
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: product.images[0],
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey[300]!),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                // Container(
                //   // width: 180,
                //   // height: 200,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: NetworkImage(product.images[0]),
                //       fit: BoxFit.cover,
                //     ),
                //     borderRadius: BorderRadius.circular(14),
                //     border: Border.all(color: Colors.grey[300]!),
                //   ),
                // ),
                const Positioned(
                  right: 10,
                  top: 10,
                  child: CircleAvatar(
                    maxRadius: 12,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TitleTextWidget(title: product.productBrand),
          SubTitleWidget(subTitle: product.productName),
          TitleTextWidget(
              title: '\$${double.tryParse(product.price.toString())}'),
        ],
      ),
    );
  }
}
