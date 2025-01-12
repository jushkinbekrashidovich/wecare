import 'package:get/get.dart';

class ExchangeController extends GetxController {
  // List of products
  final products = <Map<String, dynamic>>[
    {
      'imageUrl': 'https://images.uzum.uz/ct9ggpniub3d1eokp2f0/original.jpg', // Replace with actual URLs
      'title': 'Umbrella',
      'description': 'A vibrant red lipstick.',
      'market': 'Beauty Bazaar',
      'price': 100,
      'rating':4.6
    },
    {
      'imageUrl': 'https://images.uzum.uz/cs14vhc0u44g6joqp4rg/original.jpg',
      'title': 'Enzyme',
      'description': 'Vitamin C, 150 mml',
      'market': 'Caramba store',
      'price': 120,
      'rating':4.2
    },
    {
      'imageUrl': 'https://images.uzum.uz/cs2hhbri153t30uosbag/original.jpg',
      'title': 'Mouthwash, for a family',
      'description': 'Frosty freshness, medicinal herbs, 350 ml',
      'market': 'Fire Guru',
      'price': 110,
      'rating':4.5
    },
    {
      'imageUrl': 'https://images.uzum.uz/cqutn86sbq7g1s99a7r0/original.jpg',
      'title': 'Eyebrow and eye pencil with brush, automatic, waterproof, liner',
      'description': 'Convenient brush, microblading effect',
      'market': 'BeautyStree',
      'price': 130,
      'rating':3.9
    },
    // Add more products here
  ].obs;

  // Coins the user has
  var userCoins = 100.obs;

  void buyProduct(int index) {
    final product = products[index];
    if (userCoins.value >= product['price']) {
      userCoins.value >= product['price'];
      products.removeAt(index); // Remove product after purchase
      Get.snackbar('Success', 'You purchased ${product['title']}!');
    } else {
      Get.snackbar('Error', 'Not enough coins to purchase this item.');
    }
  }
}
