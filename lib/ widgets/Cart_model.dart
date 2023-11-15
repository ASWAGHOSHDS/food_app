class Cart{
  late final int? id;
  final String? productName;
  final int? productPrice;
  final String? image;

  Cart({
    required this.id ,
    required this.productName,
    required this.productPrice,
    required this.image
  });

  Cart.fromMap(Map<dynamic , dynamic>  res)
      : id = res['id'],
        productName = res["Burger_name"],
        productPrice = res["Brate"],
        image = res["Bimage"];

  Map<String, Object?> toMap(){
    return {
      'id' : id ,
      'productName' :productName,
      'productPrice' : productPrice,
      'image' : image,
    };
  }
}
