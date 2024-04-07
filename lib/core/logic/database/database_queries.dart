part 'database_queries.p.dart';

class DatabaseQueries {
  String insertProduct({
    required int productID,
    required String name,
    required String description,
    required String image,
    required int price,
    required int quantity,
    required String unit,
    required String note,
    required int isProduct,
    required int showPrice
  }) =>
      _$InsertProduct(
          productID: productID,
          name: name,
          description: description,
          image: image,
          price: price,
          quantity: quantity,
          unit: unit,
          note:note,
          isProduct: isProduct,showPrice: showPrice);

  String readCart() => _$ReadCart();

  String deleteProductFromCart({required String productID}) =>
      _$DeleteProductFromCart(productID: productID);

  String updateProductQuantity(
          {required String productID, required int quantity}) =>
      _$UpdateProductQuantity(productID: productID, quantity: quantity);

  String updateProductNote(
      {required String productID, required String note}) =>
      _$UpdateProductNote(productID: productID, note: note);

  String getProductByID(
      {required String productID}) =>
      _$GetProductByID(productID: productID);
}
