class BestTopShop {
  const BestTopShop({
    required this.image,
    required this.name,
    required this.desc,
    required this.coupon,
    required this.ratingTimePrice,
    required this.lattitude,
    required this.longitude,
  });

  final String image;
  final String name;
  final String desc;
  final String coupon;
  final String ratingTimePrice;

  final String lattitude;
  final String longitude;

  static List<BestTopShop> getTopGroceryRestaurants() {
    return [
      BestTopShop(
          image: 'assets/images/food3.jpg',
          name: 'A2B Collombo',
          desc: 'Srilankan',
          coupon: '30 \$ off | Use A2BSUPER',
          ratingTimePrice: '4.2 32 mins - Rs 130 for two',
          lattitude: '8.0000',
          longitude: '6.3535'),
    ];
  }
}
