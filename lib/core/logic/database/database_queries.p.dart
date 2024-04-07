part of 'database_queries.dart';

String _$InsertProduct(
    {required int productID,
    required String name,
    required String description,
    required String image,
    required int price,
    required int quantity,
      required String unit,
      required String note,
    required int isProduct,
    required int showPrice,
    }) {
  String query = '''
    INSERT INTO 'products' (
    "product_id",
    "name",
    "description",
    "image",
    "price",
    "quantity",
    "unit",
    "note",
    "is_product",
    "show_price"
    ) VALUES (
    "$productID",
    "$name",
    "$description",
    "$image",
    "$price",
    "$quantity",
    "$unit",
    "$note",
    "$isProduct",
    "$showPrice"
    )''';

  return query;
}

String _$ReadCart() {
  String query = '''
    SELECT * FROM "products"
    ''';

  return query;
}

String _$DeleteProductFromCart({required String productID}) {
  String query = '''
    DELETE FROM "products" WHERE "product_id" = "$productID"
    ''';
  return query;
}

String _$UpdateProductQuantity(
    {required String productID, required int quantity}) {
  String query = '''
    UPDATE "products" SET "quantity" = "$quantity" WHERE "product_id" = "$productID"
    ''';
  return query;
}String _$UpdateProductNote(
    {required String productID, required String note}) {
  String query = '''
    UPDATE "products" SET "note" = "$note" WHERE "product_id" = "$productID"
    ''';
  return query;
}

String _$GetProductByID({required String productID}) {
  String query = '''
    SELECT * FROM "products" WHERE "product_id" = "$productID"
    ''';

  return query;
}
