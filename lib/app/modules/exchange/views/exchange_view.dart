import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';

import '../controllers/exchange_controller.dart';

class ExchangeView extends GetView<ExchangeController> {
  const ExchangeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
        centerTitle: true,
      ),
      body: Obx(
            () => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 items per row
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.65, // Adjust based on the image aspect ratio
            ),
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              final product = controller.products[index];
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  border: Border.all(color: AppColors.black, width: 0.09)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Image
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(10.0),
                      ),
                      child: Image.network(
                        product['imageUrl'],
                        width: double.infinity,
                        height: 120.0, // Adjust height as needed
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    // Market Name and Rating
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product['market'],
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star, size: 14.0, color: Colors.orange),
                              Text(
                                product['rating'].toString(),
                                style: const TextStyle(fontSize: 12.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    // Product Title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        product['title'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    // Product Price
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '${product['price']} 🌷',
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    // Buy Button
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            controller.buyProduct(index);
                          },
                          style: ElevatedButton.styleFrom(

                            backgroundColor: AppColors.mainOrangeColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),

                            ),
                          ),
                          child: const Text('Buy', style: TextStyle(color: AppColors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
