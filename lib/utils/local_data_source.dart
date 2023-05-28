import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSource {
  LocalDataSource._() {
    _initPrefs();
  }

  static final LocalDataSource _instance = LocalDataSource._();

  factory LocalDataSource() => _instance;

  SharedPreferences? _preferences;
  static const String _requestId = "request_id";
  static const String _jwt = "jwt";

  Future<void> _initPrefs() async {
    _preferences ??= await SharedPreferences.getInstance();
  }

  // request id
  Future<bool> setRequestId(String requestId) async {
    await _initPrefs();
    return _preferences!.setString(_requestId, requestId);
  }

  Future<String?> getRequestId() async {
    await _initPrefs();
    return _preferences!.getString(_requestId);
  }

  // jwt
  Future<bool> setJwt(String jwt) async {
    await _initPrefs();
    return _preferences!.setString(_jwt, jwt);
  }

  Future<String?> getJwt() async {
    await _initPrefs();
    return _preferences!.getString(_jwt);
  }
}
