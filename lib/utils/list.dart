import 'package:trendy_treasures_seller/models/others/coupon.dart';

enum PaymentMethod { cash, card }

List<String> images = [
  'assets/images/introduce2.jpg',
  'assets/images/introduce3.jpg',
  'assets/images/introduce4.jpg',
];

List<String> titles = [
  '20% Discount                    New Arrival Product',
  'Take Advantage                  Of The Offer Shopping',
  'All Types Offers             Within Your Reach',
];

List<String> subTitles = [
  'Publish up your selfies to make yourself more beautiful with this app.',
  'Publish up your selfies to make yourself more beautiful with this app.',
  'Publish up your selfies to make yourself more beautiful with this app.',
];

List<Map<String, dynamic>> productCategories = [
  {
    "type": 'Clothes',
    "image": 'assets/images/products/clothes.jpeg',
  },
  {
    "type": 'Bags',
    "image": 'assets/images/products/bag.jpeg',
  },
  {
    "type": 'Shoes',
    "image": 'assets/images/products/shoes.jpeg',
  },
  {
    "type": 'Electronics',
    "image": 'assets/images/products/electronics.jpeg',
  },
  {
    "type": 'Jewelry',
    "image": 'assets/images/products/accessories.jpeg',
  },
];

List<String> myOrderStatus = ["Ongoing", "Completed"];

List<String> clotheSizes = [
  'S',
  'M',
  'L',
  'XL',
  'XXL',
];

List<String> shoesSizes =
    List.generate(21, (index) => (35.0 + index * 0.5).toString());

List<String> others = [
  'S',
  'M',
  'L',
];

List<Coupon> clothesCoupons = [
  const Coupon(
    id: 'FASHION10OFF',
    condition: "Giảm giá 10% cho bất kỳ sản phẩm thời trang nào",
    value: '0.10',
  ),
  const Coupon(
    id: 'FREESHIPFASHION',
    condition: "Miễn phí vận chuyển cho đơn hàng quần áo trên 50 đô la.",
    value: '15\$',
  ),
  const Coupon(
    id: 'QUANAO15OFF',
    condition: "Giảm giá 15% cho các loại quần áo nam và nữ.",
    value: '0.15',
  ),
  const Coupon(
    id: 'FASHIONSALE20',
    condition: " Giảm giá 20% cho đơn hàng thời trang tr0.ên đô la.",
    value: '0.20',
  ),
  const Coupon(
    id: 'SUMMERSTYLE',
    condition: "Giảm giá 25% cho các sản phẩm thời trang mùa hè.",
    value: '0.25',
  ),
  const Coupon(
    id: 'TRENDYOUTFIT',
    condition: "Giảm giá 15% cho các trang phục thời trang mới nhất.",
    value: '0.20',
  ),

  //
  const Coupon(
    id: 'DRESSES25',
    condition: "Giảm giá 25% cho tất cả váy đầm.",
    value: '0.25',
  ),
  const Coupon(
    id: 'STYLISHSHIRTS',
    condition: "Giảm giá 10% cho các áo sơ mi thời trang.",
    value: '0.10',
  ),
];

List<Coupon> electronicCoupons = [
  const Coupon(
    id: 'ELECTRO10OFF',
    condition: "Giảm giá 10% cho các sản phẩm điện tử.",
    value: '0.10',
  ),
  const Coupon(
    id: 'TECHSALE15',
    condition: "Giảm giá 15% cho đơn hàng công nghệ trên 50 đô la.",
    value: '0.15',
  ),
  const Coupon(
    id: 'FREEACCDELIVERY',
    condition: "Miễn phí vận chuyển cho phụ kiện điện tử.",
    value: '15\$',
  ),
  const Coupon(
    id: 'SMARTPHONES25',
    condition: "Giảm giá 25% cho các điện thoại thông minh.",
    value: '0.25',
  ),
  const Coupon(
    id: 'LAPTOPDEALS',
    condition: "Giảm giá 15% cho laptop và máy tính xách tay",
    value: '0.15',
  ),
  const Coupon(
    id: 'CAMERAFLASH',
    condition: "Giảm giá 20% cho các sản phẩm máy ảnh và máy quay phim",
    value: '0.20',
  ),
  const Coupon(
    id: 'GAMINGGEAR',
    condition: "Giảm giá 15% cho các phụ kiện và thiết bị chơi game.",
    value: '0.15',
  ),
  const Coupon(
    id: 'TVDISCOUNTS',
    condition: " Giảm giá 20% cho tất cả các loại TV.",
    value: '0.20',
  ),
  const Coupon(
    id: 'SMARTHOME25',
    condition: "Giảm giá 25% cho các sản phẩm nhà thông minh.",
    value: '0.25',
  ),
];

List<Coupon> bagCoupons = [
  const Coupon(
    id: 'FREESHIPPING',
    condition: "Miễn phí vận chuyển cho các loại túi.",
    value: '15\$',
  ),
  const Coupon(
    id: 'BAGSALE10',
    condition: "Giảm giá 10% cho các loại túi xách.",
    value: '0.10',
  ),
  const Coupon(
    id: 'FASHIONBAGS20',
    condition: "Giảm giá 20% cho các sản phẩm túi thời trang.",
    value: '0.20',
  ),
  const Coupon(
    id: 'TRAVELTOTE15',
    condition: "Giảm giá 15% cho túi xách du lịch.",
    value: '0.15',
  ),
  const Coupon(
    id: 'LEATHERBAG25',
    condition: "Giảm giá 25% cho các túi xách da.",
    value: '0.25',
  ),
  const Coupon(
    id: 'BACKPACKDEAL',
    condition: "Giảm giá 10% cho các loại ba lô.",
    value: '0.10',
  ),
  const Coupon(
    id: 'CLUTCHSAVINGS',
    condition: "Giảm giá 20% cho các sản phẩm túi clutch.",
    value: '0.20',
  ),
  const Coupon(
    id: 'HANDBAGSPECIAL',
    condition: "Giảm giá 15% cho các sản phẩm túi xách tay.",
    value: '0.15',
  ),
  const Coupon(
    id: 'DESIGNERBAGS',
    condition: "Giảm giá 30% cho túi xách của các nhà thiết kế nổi tiếng.",
    value: '0.30',
  ),
  const Coupon(
    id: 'VINTAGEBAGS',
    condition: "Giảm giá 25% cho các túi xách cổ điển.",
    value: '0.25',
  ),
  const Coupon(
    id: 'SCHOOLBACKPACK',
    condition: "Giảm giá 10% cho ba lô học sinh.",
    value: '0.10',
  ),
  const Coupon(
    id: 'MINIBAGSPECIAL',
    condition: "Giảm giá 15% cho các sản phẩm túi xách mini.",
    value: '0.15',
  ),
  const Coupon(
    id: 'SHOPPER25',
    condition: "Giảm giá 25% cho túi xách mua sắm.",
    value: '0.25',
  ),
];

List<Coupon> shoesCoupons = [
  const Coupon(
    id: 'FREESHIPPING',
    condition: "Miễn phí vận chuyển cho các loại giày.",
    value: '15\$',
  ),
  const Coupon(
    id: 'SNEAKER10OFF',
    condition: "Giảm giá 10% cho tất cả các đôi giày sneaker.",
    value: '0.10',
  ),
  const Coupon(
    id: 'KICKS20SALE',
    condition: "Giảm giá 20% cho các loại giày thể thao.",
    value: '0.20',
  ),
  const Coupon(
    id: 'TRENDYSNEAKS',
    condition: "Giảm giá 15% cho các sản phẩm giày sneaker phổ biến.",
    value: '0.15',
  ),
  const Coupon(
    id: 'SPORTYFOOTWEAR',
    condition: "Giảm giá 25% cho các đôi giày thể thao.",
    value: '0.25',
  ),
  const Coupon(
    id: 'CASUALSNEAK10',
    condition: "Giảm giá 10% cho các đôi giày sneaker dạo phố.",
    value: '0.10',
  ),
  const Coupon(
    id: 'RUNNINGSHOES20',
    condition: "Giảm giá 20% cho giày chạy bộ.",
    value: '0.20',
  ),
  const Coupon(
    id: 'HIKINGSNEAKER',
    condition: " Giảm giá 15% cho giày sneaker đi bộ đường dài.",
    value: '0.15',
  ),
  const Coupon(
    id: 'HIGHTOPSALE',
    condition: "Giảm giá 10% cho các đôi giày sneaker cao cổ.",
    value: '0.10',
  ),
  const Coupon(
    id: 'BASKETBALL30',
    condition: "Giảm giá 30% cho giày bóng rổ.",
    value: '0.30',
  ),
  const Coupon(
    id: 'SKATEBOARD10',
    condition: "Giảm giá 10% cho giày trượt ván.",
    value: '0.10',
  ),
  const Coupon(
    id: 'FASHIONSNEAKS',
    condition: "Giảm giá 20% cho giày sneaker thời trang.",
    value: '0.20',
  ),
  const Coupon(
    id: 'SLIPRESISTANT',
    condition: "Giảm giá 15% cho giày sneaker chống trượt.",
    value: '0.20',
  ),
];

List<Coupon> jewelryCoupons = [
  const Coupon(
    id: 'FREESHIPPING',
    condition: "Miễn phí vận chuyển cho các loại trang sức.",
    value: '15\$',
  ),
  const Coupon(
    id: 'BLING10',
    condition: "Giảm giá 10% cho các sản phẩm trang sức.",
    value: '0.10',
  ),
  const Coupon(
    id: 'GOLDENSALE',
    condition: "Giảm giá 15% cho trang sức vàng.",
    value: '0.15',
  ),
  const Coupon(
    id: 'DIAMONDS25',
    condition: "Giảm giá 25% cho các sản phẩm kim cương.",
    value: '0.25',
  ),
  const Coupon(
    id: 'PEARLACCESS',
    condition: "Giảm giá 20% cho các sản phẩm trang sức ngọc trai.",
    value: '0.20',
  ),
  const Coupon(
    id: 'CUSTOMRINGS',
    condition: "Giảm giá 15% cho các loại nhẫn tùy chỉnh.",
    value: '0.15',
  ),
  const Coupon(
    id: 'NECKLACE25OFF',
    condition: "Giảm giá 25% cho dây chuyền và vòng cổ.",
    value: '0.25',
  ),
  const Coupon(
    id: 'BRIDALBLISS',
    condition: "Giảm giá 30% cho các sản phẩm trang sức cưới.",
    value: '0.30',
  ),
  const Coupon(
    id: 'EARRINGDEALS',
    condition: "Giảm giá 10% cho các loại bông tai.",
    value: '0.10',
  ),
  const Coupon(
    id: 'CRYSTALCLEAR',
    condition: "Giảm giá 15% cho các sản phẩm pha lê.",
    value: '0.15',
  ),
  const Coupon(
    id: 'VINTAGEJEWELS',
    condition: "Giảm giá 25% cho trang sức cổ điển.",
    value: '0.25',
  ),
  const Coupon(
    id: 'CHARM10OFF',
    condition: "Giảm giá 10% cho các món trang sức hình hạt may mắn.",
    value: '0.10',
  ),
  const Coupon(
    id: 'JEWELRYBOX',
    condition: "Giảm giá 15% cho hộp trang sức.",
    value: '0.15',
  ),
  const Coupon(
    id: 'SAPPHIRESAVINGS',
    condition: "Giảm giá 20% cho các sản phẩm đá Sapphire.",
    value: '0.20',
  )
];

List dummyCard = [
  {
    "bank": 'Agribank - Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam',
    'image': 'assets/images/credit_card/Agribank.jpg',
  },
  {
    "bank": 'ACB - Ngân hàng thương mại cổ phần Á Châu',
    'image': 'assets/images/credit_card/ACB-Bank.jpg',
  },
  {
    "bank": 'Techcombank - Ngân hàng Thương mại cổ phần Kỹ Thương Việt Nam',
    'image': 'assets/images/credit_card/Techcombank.jpg',
  },
  {
    "bank": 'TPBank - Ngân hàng Thương mại Cổ phần Tiên Phong',
    'image': 'assets/images/credit_card/TP-Bank.jpg',
  },
  {
    "bank": 'VIB - Ngân hàng Thương mại Cổ phần Quốc tế Việt Nam',
    'image': 'assets/images/credit_card/VIB-Bank.jpg',
  },
  {
    "bank": 'Vietcombank - Ngân hàng thương mại cổ phần Ngoại thương Việt Nam',
    'image': 'assets/images/credit_card/Vietcombank.jpg',
  },
  {
    "bank": 'Vietinbank - Ngân hàng TMCP Công Thương Việt Nam',
    'image': 'assets/images/credit_card/Vietinbank.jpg',
  },
  {
    "bank": 'VPBank - Ngân hàng TMCP Việt Nam Thịnh Vượng',
    'image': 'assets/images/credit_card/VP-Bank.jpg',
  },
];
