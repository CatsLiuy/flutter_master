

class AppNetworkManager {
  AppNetworkManager._privateConstructor();

  _jsonHasBadStatus(json) {
    return (json["code"] == null || json["code"] == 200);
  }
}