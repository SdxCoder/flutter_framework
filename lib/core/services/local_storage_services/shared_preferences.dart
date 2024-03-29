import 'package:shared_preferences/shared_preferences.dart';

/**
 * A common shared preference setup used by all other local-storage
 * services
 */


class LocalStorageService {
  static LocalStorageService _localStorageService;
  static SharedPreferences _preferences;


  /**
   * Instantiate LocalStorageService and shared prefernces
   */

  static Future<LocalStorageService> getInstance() async {
    if (_localStorageService == null) {
      _localStorageService = LocalStorageService();
    }

    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }

    return _localStorageService;
  }

  /**
   * Dynamic Method 
   * Get the content saved on disk depending on key
   * This method should be overriden to get the content of any specific type
   */

  dynamic getFromDisk(String key) {
    var value = _preferences.get(key);
    print('(TRACE) LocalStorageService:_getFromDisk. key: $key value: $value');
    return value;
  }

  /**
   * Dynamic Method 
   * Save the content to the local Storage against provided key
   * This method should be overriden to save the content of any specific type
   */

  dynamic saveToDisk<T>(String key, T content) {
    print('(TRACE) LocalStorageService:_saveToDisk. key: $key value: $content');

    if (content is String) {
      _preferences.setString(key, content);
    }
    if (content is bool) {
      _preferences.setBool(key, content);
    }
    if (content is int) {
      _preferences.setInt(key, content);
    }
    if (content is double) {
      _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences.setStringList(key, content);
    }
  }
}


