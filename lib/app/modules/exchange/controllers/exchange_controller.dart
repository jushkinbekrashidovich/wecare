import 'package:get/get.dart';

class ExchangeController extends GetxController {
  // List of products
  final products = <Map<String, dynamic>>[
    {
      'imageUrl': 'https://blb.uz/image/cache/catalog/image/cache/catalog/tovar18/on-amino-energy-30-ser-new-packing-700x700.webp', // Replace with actual URLs
      'title': 'Lipstick',
      'description': 'A vibrant red lipstick.',
      'market': 'Beauty Bazaar',
      'price': 50,
      'rating':4.5
    },
    {
      'imageUrl': 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/qst/qst00392/v/12.jpg',
      'title': 'Eyeliner',
      'description': 'Smooth black eyeliner.',
      'market': 'Cosmo Store',
      'price': 30,
      'rating':4.5
    },
    {
      'imageUrl': 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/qst/qst00392/v/12.jpg',
      'title': 'Eyeliner',
      'description': 'Smooth black eyeliner.',
      'market': 'Cosmo Store',
      'price': 30,
      'rating':4.5
    },
    {
      'imageUrl': 'https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/qst/qst00392/v/12.jpg',
      'title': 'Eyeliner',
      'description': 'Smooth black eyeliner.',
      'market': 'Cosmo Store',
      'price': 30,
      'rating':4.5
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
