import 'dart:developer';
import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trendy_treasures_seller/constants/enum/type.dart';
import 'package:trendy_treasures_seller/models/others/coupon.dart';
import 'package:trendy_treasures_seller/models/others/product_variant.dart';
import 'package:trendy_treasures_seller/models/product/response/product_response.dart';
import 'package:trendy_treasures_seller/providers/coupons.dart';
import 'package:trendy_treasures_seller/screens/add_product_screen/widgets/custom_textfield_widget.dart';
import 'package:trendy_treasures_seller/screens/add_product_screen/widgets/select_coupons.dart';
import 'package:trendy_treasures_seller/screens/my_products_screen/cubit/my_products_cubit.dart';
import 'package:trendy_treasures_seller/utils/list.dart';
import 'package:trendy_treasures_seller/utils/ui_helpers.dart';
import 'package:trendy_treasures_seller/utils/utils.dart';
import 'package:trendy_treasures_seller/widgets/custom_button_widget.dart';
import 'package:trendy_treasures_seller/widgets/title_text_widget.dart';

class AddOrUpdateProductScreen extends StatefulWidget {
  const AddOrUpdateProductScreen(
      {super.key, this.product, required this.typeAction});

  final Product? product;
  final TypeAction typeAction;

  static BlocProvider<MyProductsCubit> provider(
      {Product? product, required TypeAction typeAction}) {
    return BlocProvider(
      create: (context) {
        return MyProductsCubit();
      },
      child: AddOrUpdateProductScreen(product: product, typeAction: typeAction),
    );
  }

  @override
  State<AddOrUpdateProductScreen> createState() =>
      _AddOrUpdateProductScreenState();
}

class _AddOrUpdateProductScreenState extends State<AddOrUpdateProductScreen> {
  final TextEditingController _productBrandController = TextEditingController();
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final PageController _pageController = PageController();

  List<String> _categories = [];

  List<String> _sizes = [];

  String? category;

  String? size;

  List<File> _images = [];

  List<String> _imagesAvailable = [];

  bool isCategorySelected = false;

  Color pickerColor = const Color(0xff443a49);

  List<ProductVariantRequest> productVariants = [];
  @override
  void dispose() {
    super.dispose();

    _productBrandController.dispose();
    _productNameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
  }

  void selectImages() async {
    final res = await pickImages();
    setState(() {
      _imagesAvailable = [];
      _images = res;
    });
  }

  @override
  void initState() {
    for (var element in productCategories) {
      _categories.add(element['type']);
    }
    // _categories = productCategories;
    log('images.toString()');
    log(_imagesAvailable.toString());

    if (widget.product != null) {
      _productBrandController.text = widget.product!.productBrand;
      _productNameController.text = widget.product!.productName;
      _descriptionController.text = widget.product!.description;
      _priceController.text = widget.product!.price.toString();
      category = widget.product!.category;
      for (var productVariant in widget.product!.productVariants) {
        productVariants.add(ProductVariantRequest(
            size: productVariant.size,
            quantity: productVariant.quantity,
            hexColor: productVariant.hexColor));
      }

      _imagesAvailable = [...widget.product!.images];

      log(_imagesAvailable.toString());
    }
    super.initState();
  }

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<UserProvider>(context).user;
    final couponsProvider = Provider.of<CouponsProvider>(context);

    // log(user.toJson().toString());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          widget.typeAction == TypeAction.create
              ? 'Add Product'
              : 'Update Product',
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: BlocListener<MyProductsCubit, MyProductsState>(
        listener: (context, state) async {
          if (state.data!.error != "") {
            if (state.data!.error.contains('Images') ||
                state.data!.error.contains('brand') ||
                state.data!.error.contains('Product') ||
                state.data!.error.contains('Description') ||
                state.data!.error.contains('Price') ||
                state.data!.error.contains('more') ||
                state.data!.error.contains('variants') ||
                state.data!.error.contains('is')) {
              UIHelpers.showSnackBar(
                  context: context,
                  message: state.data!.error.replaceAll(RegExp(r',.*$'), ""));
            } else if (state.data!.error != "Success") {
              await AwesomeDialog(
                context: context,
                dialogType: DialogType.success,
                animType: AnimType.rightSlide,
                title: 'Successfully',
                desc: state.data!.error.replaceAll(RegExp(r',.*$'), ""),
                btnOkOnPress: () {},
              ).show().then((value) {
                if (widget.typeAction == TypeAction.create) {
                  _productBrandController.clear();
                  _productNameController.clear();
                  _descriptionController.clear();
                  _priceController.clear();
                  _quantityController.clear();
                  productVariants.clear();

                  _images = [];
                } else {
                  Navigator.pop(context);
                }
                setState(() {});
              });
            } else {
              await AwesomeDialog(
                context: context,
                dialogType: DialogType.error,
                animType: AnimType.rightSlide,
                title: 'Error',
                desc: state.data!.error.replaceAll(RegExp(r',.*$'), ""),
                btnOkOnPress: () {},
              ).show();
            }
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BlocBuilder<MyProductsCubit, MyProductsState>(
              builder: (context, state) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    _imagesAvailable.isNotEmpty
                        ? GestureDetector(
                            onTap: selectImages,
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: double.infinity,
                              height: 300,
                              child: Stack(
                                children: [
                                  PageView.builder(
                                    controller: _pageController,
                                    itemBuilder: (context, index) {
                                      return CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        imageUrl: _imagesAvailable[index],
                                        progressIndicatorBuilder:
                                            (context, url, downloadProgress) =>
                                                Center(
                                          child: CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      );
                                      //  Image.network(
                                      //   _imagesAvailable[index],
                                      //   fit: BoxFit.cover,
                                      // );
                                    },
                                    itemCount: _imagesAvailable.length,
                                  ),
                                  const Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.change_circle,
                                        color: Colors.white,
                                        size: 32,
                                      )),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 12),
                                      child: SmoothPageIndicator(
                                        controller: _pageController,
                                        count: _imagesAvailable.length,
                                        effect: const SlideEffect(
                                          activeDotColor: Colors.white,
                                          dotWidth: 12,
                                          dotHeight: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : _images.isNotEmpty
                            ? Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: double.infinity,
                                height: 300,
                                child: Stack(
                                  children: [
                                    PageView.builder(
                                      controller: _pageController,
                                      itemBuilder: (context, index) {
                                        return Image.file(
                                          _images[index],
                                          fit: BoxFit.cover,
                                        );
                                      },
                                      itemCount: _images.length,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 12),
                                        child: SmoothPageIndicator(
                                          controller: _pageController,
                                          count: _images.length,
                                          effect: const SlideEffect(
                                            activeDotColor: Colors.white,
                                            dotWidth: 12,
                                            dotHeight: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : GestureDetector(
                                onTap: selectImages,
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(10),
                                  dashPattern: const [10, 4],
                                  strokeCap: StrokeCap.round,
                                  child: Container(
                                    width: double.infinity,
                                    height: 300,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.folder_open,
                                          size: 40,
                                        ),
                                        const SizedBox(height: 15),
                                        Text(
                                          'Select Product Images',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey.shade400),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFieldWidget(
                      label: 'Product Brand',
                      textEditingController: _productBrandController,
                      hintText: 'ex: Gucci,',
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    CustomTextFieldWidget(
                      label: 'Product Name',
                      textEditingController: _productNameController,
                      hintText: 'ex: T-Shirt',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      label: 'Description',
                      textEditingController: _descriptionController,
                      hintText: 'ex: T-Shirt',
                      maxLines: 7,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      textInputType: TextInputType.number,
                      label: 'Price',
                      textEditingController: _priceController,
                      hintText: 'ex: T-Shirt',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // CustomTextFieldWidget(
                    //   label: 'Quantity',
                    //   textInputType: TextInputType.number,
                    //   textEditingController: _quantityController,
                    //   hintText: 'ex: T-Shirt',
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      padding: const EdgeInsets.only(left: 12),
                      height: 60,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(0.2),
                      alignment: Alignment.center,
                      child: DropdownButton(
                        underline: Container(),
                        hint: const Text('Select Category'),
                        isDense: true,
                        isExpanded: true,
                        padding: const EdgeInsets.all(12),
                        onChanged: (value) {
                          setState(
                            () {
                              category = value;
                              size = null;
                              if (category == "Clothes") {
                                _sizes = clotheSizes;
                              } else if (category == 'Shoes') {
                                _sizes = shoesSizes;
                              } else {
                                _sizes = others;
                              }

                              isCategorySelected = true;
                            },
                          );
                        },
                        value: category,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: _categories
                            .map(
                              (item) => DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 12),
                            height: 60,
                            width: double.infinity,
                            color: Colors.grey.withOpacity(0.2),
                            alignment: Alignment.center,
                            child: DropdownButton(
                              padding: const EdgeInsets.all(12),
                              hint: const Text('Size'),
                              onChanged: (value) {
                                setState(() {
                                  size = value;
                                });
                              },
                              value: size,
                              isDense: true,
                              isExpanded: true,
                              underline: Container(),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: _sizes
                                  .map(
                                    (item) => DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: CustomTextFieldWidget(
                            label: 'Quantity',
                            textInputType: TextInputType.number,
                            textEditingController: _quantityController,
                            hintText: 'ex: 1, 10, 100',
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Pick a color!'),
                                  content: SingleChildScrollView(
                                    child: ColorPicker(
                                      pickerColor: pickerColor,
                                      onColorChanged: changeColor,
                                      pickerAreaBorderRadius:
                                          BorderRadius.circular(50),
                                    ),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      child: const Text('Got it'),
                                      onPressed: () {
                                        // setState(
                                        //     () => currentColor = pickerColor);
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: pickerColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        TextButton.icon(
                          onPressed: () {
                            log(pickerColor.blue.toString());
                            if (size != null &&
                                _quantityController.text.isNotEmpty &&
                                int.tryParse(_quantityController.text)! > 0) {
                              setState(
                                () {
                                  productVariants.add(
                                    ProductVariantRequest(
                                        size: size!,
                                        quantity: int.tryParse(
                                            _quantityController.text)!,
                                        hexColor:
                                            '#${pickerColor.value.toRadixString(16)}'),
                                  );
                                  // log(productVariants[0].hexColor);
                                },
                              );
                            } else {
                              UIHelpers.showSnackBar(
                                  context: context,
                                  message: 'Please fill all types');
                            }
                          },
                          icon: const Icon(Icons.done),
                          label: const Text('Add'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    if (productVariants.isNotEmpty)
                      DataTable(columns: const [
                        DataColumn(
                          label: TitleTextWidget(
                            title: 'Size',
                            fontWeight: FontWeight.w600,
                          ),
                          numeric: false,
                        ),
                        DataColumn(
                          label: TitleTextWidget(
                            title: 'Quantity',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        DataColumn(
                          label: TitleTextWidget(
                            title: 'Color',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        DataColumn(
                          label: TitleTextWidget(
                            title: '',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ], rows: [
                        for (var i = 0; i < productVariants.length; i++)
                          DataRow(cells: [
                            DataCell(
                              Center(
                                child: Text(
                                  productVariants[i].size,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Text(
                                  productVariants[i].quantity.toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            DataCell(
                              Center(
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color(int.parse(
                                        productVariants[i]
                                            .hexColor
                                            .replaceAll('#', ''),
                                        radix: 16)),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            DataCell(
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      productVariants.removeAt(i);
                                    });
                                  },
                                  child: const Icon(Icons.delete)),
                            ),
                          ])
                      ]),
                    const SizedBox(
                      height: 12,
                    ),
                    SelectCoupons(
                      category: category,
                      initialValue: widget.product?.coupons ?? <Coupon>[],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomButtonWidget(
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      title: widget.typeAction == TypeAction.create
                          ? 'Sell'
                          : 'Update',
                      onClick: () async {
                        if (category == null) {
                          UIHelpers.showSnackBar(
                              context: context, message: "Category is empty");
                        } else {
                          if (widget.typeAction == TypeAction.create) {
                            await context.read<MyProductsCubit>().uploadProduct(
                                  context: context,
                                  productBrand: _productBrandController.text,
                                  productName: _productNameController.text,
                                  description: _descriptionController.text,
                                  price: _priceController.text,
                                  category: category!,
                                  images: _images,
                                  productVariants: productVariants,
                                  coupons: couponsProvider.coupons,
                                );
                          } else {
                            await context.read<MyProductsCubit>().updateProduct(
                                  context: context,
                                  productBrand: _productBrandController.text,
                                  productName: _productNameController.text,
                                  description: _descriptionController.text,
                                  price: _priceController.text,
                                  category: category!,
                                  images: _images,
                                  productVariants: productVariants,
                                  coupons: couponsProvider.coupons,
                                  imagesAvailable: _imagesAvailable,
                                  id: widget.product!.id,
                                );
                          }
                        }
                      },
                      borderColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 12,
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}
