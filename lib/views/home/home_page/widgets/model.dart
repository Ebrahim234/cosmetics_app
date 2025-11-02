class ProductModel {
  final String image, title,price;

  ProductModel({
    required this.image,
    required this.title,
    required this.price,
  });
}

final productList = [
  ProductModel(image: "https://summerfridays.com/cdn/shop/files/Main_PDP_Square_Mauve_Vanilla.jpg?v=1686004788", title: "Face tint / lip tint", price: r"$44.99"),
  ProductModel(image:  "https://img.joomcdn.net/79fca485c8ba105e70df8f6d183d40eac5cf4c93_original.jpeg", title: "Athe Red lipstick", price: r"$44.99"),
  ProductModel(image:  "https://dominique.com/cdn/shop/files/Brow_Frame_Brow_Blowout_Bundle.webp?v=1746052142&width=2000", title: "Athe Red lipstick", price: r"$44.99"),
  ProductModel(image:  "https://irecommend.ru/sites/default/files/imagecache/copyright1/user-images/216607/a81OhWLhz2ZhtCD5r6g.jpg", title: "Athe Red lipstick", price: r"$44.99"),
];
