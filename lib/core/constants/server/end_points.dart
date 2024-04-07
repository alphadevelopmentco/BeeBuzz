class EndPoints{
  static const String api = 'https://api.one.onedelivery.cloud/api/v1/users/';

  /// Authentication
  static const String login = 'auth/login';
  static const String register = 'auth/register';
  static const String forgetPassword = 'auth/forget-password';
  static const String resetPassword = 'auth/reset-password';
  static const String verifyCode = 'auth/verify-code';
  static const String verifyCodeFromPassword = 'auth/verify-code-password';
  static const String resendCode = 'auth/resend-code';
  static const String changePassword = 'auth/change-password';
  static const String deleteAccount = 'auth/delete-account';
  static const String logout = 'auth/logout';

  /// Home
  static const String categories = 'categories/{city}';
  static const String productsByCategory = 'products/category/{category}';
  static const String productsBySubCategory = 'products/sub-category/{subCategory}';
  static const String bannersByCityID = 'banners/{city}';
  static const String storiesByCityID = 'stories/{city}';
  static const String foodbasketByCityID = 'foodbaskets/{city}';

  /// Order
  static const String orders = 'orders';
  static const String cancelOrders = 'orders/cancel/{order}';
  static const String noteOrders = 'orders/note/{order}';

  /// Address
  static const String addresses = 'addresses';
  static const String deleteAddresses = 'addresses/{address}';

  /// Profile
  static const String profile = 'profile';
  static const String state = 'profile/state';
  static const String city = 'profile/city/{state}';
  static const String area = 'profile/area/{city}';
  static const String contactMessage = 'profile/message';

  /// Support Location
  static const String supportCity = 'support-city';

  /// Status User
  static const String userStatus = 'status';

  /// Products
  static const String searchProduct = 'products/search?page={page}&count={count}&keyword={keyword}';
}