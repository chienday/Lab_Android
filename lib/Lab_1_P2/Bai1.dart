import 'package:flutter/material.dart';



class Product {
  final String image;
  final String title;
  final double rating;
  final String views;
  final double price;

  Product({
    required this.image,
    required this.title,
    required this.rating,
    required this.views,
    required this.price,
  });
}

class ProductListPage extends StatelessWidget {
  ProductListPage({super.key});

  final List<Product> products = [
    Product(
      image: "assets/images/hehe.png",
      title: "Ví nam mini đựng thẻ VS22 chất da Saffiano bền đẹp...",
      rating: 4.0,
      views: "12",
      price: 255.000,
    ),
    Product(
      image: "assets/images/hehe.png",
      title: "Túi đeo chéo LEACAT polyester chống thấm nước...",
      rating: 5.0,
      views: "1.3k",
      price: 315.000,
    ),
    Product(
      image: "acssets/images/hehe.png",
      title: "Phin cafe Trung Nguyên - Phin nhôm cá nhân cao cấp",
      rating: 4.5,
      views: "12.2k",
      price: 28.000,
    ),
    Product(
      image: "assets/images/hehe.png",
      title: "Ví da cầm tay mềm mại cổ điển thiết kế thời trang cao cấp",
      rating: 5.0,
      views: "56",
      price: 610.000,
    ),
    Product(
      image: "assets/images/hehe.png",
      title: "Dép thời trang nữ siêu nhẹ",
      rating: 4.7,
      views: "8.8k",
      price: 129.000,
    ),
    Product(
      image: "assets/images/hehe.png",
      title: "Tai nghe không dây M10, âm thanh nổi siêu bass",
      rating: 5.0,
      views: "540",
      price: 56.000,
    ),
  ];

  Widget _badge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // <-- remove the "<" back button
        title: const Text(
          "DANH SÁCH SẢN PHẨM",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Hình ảnh
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tên sản phẩm
                      Text(
                        product.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 4),

                      // Badge + Rating + Views (views nằm bên phải)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              _badge('HOA HỒNG', const Color(0xFFFF5722)),
                              const SizedBox(width: 4),
                              _badge('XTRA', const Color(0xFF1565C0)),
                              const SizedBox(width: 6),
                              Icon(Icons.star,
                                  size: 14, color: Colors.orangeAccent),
                              Text(product.rating.toStringAsFixed(1),
                              style: const TextStyle(fontSize: 12)),
                            ],
                          ),
                          Text(
                            "${product.views} views",
                            style: const TextStyle(
                                fontSize: 11, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),

                      // Giá
                      Text(
                        "${product.price.toStringAsFixed(3)} VND",
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
