// Project imports:
import '../logic/singleton/statics.dart';

class AuthenticationServices{
  Future<bool> chickUserAuthenticatedStatus()async {
    if ((await box.getSaveData(key: keys.token) ?? '0') == '0') return false;
    return true;
  }
}
