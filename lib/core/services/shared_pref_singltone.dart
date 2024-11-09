import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper {
  static final SharedPrefsHelper _instance = SharedPrefsHelper._internal();
  static SharedPreferences? _prefs; // Make SharedPreferences nullable initially

  // Factory constructor to return the same instance each time
  factory SharedPrefsHelper() {
    return _instance;
  }

  // Private internal constructor for Singleton pattern
  SharedPrefsHelper._internal();

  // Initialization method for SharedPreferences, called only once in main()
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Method to save different types of data, with null checks for key and value
  static Future<bool> save({required String? key, required var value}) async {
    // Ensure _prefs is initialized and key/value are not null
    if (_prefs == null || key == null || value == null) return false;

    // Use switch-case to handle each data type
    switch (value.runtimeType) {
      case String:
        return await _prefs!.setString(key, value);
      case int:
        return await _prefs!.setInt(key, value);
      case double:
        return await _prefs!.setDouble(key, value);
      case bool:
        return await _prefs!.setBool(key, value);
      default:
        return false; // Return false if data type is unsupported
    }
  }

  // Method to retrieve data from Shared Preferences
  static dynamic get({required String? key}) {
    if (_prefs == null || key == null) return null; // Check for initialized _prefs and non-null key
    return _prefs!.get(key); // Retrieve the value by key, or null if not found
  }

  // Method to remove a specific key-value pair from Shared Preferences
  static Future<bool> remove({required String? key}) async {
    if (_prefs == null || key == null) return false; // Check for initialized _prefs and non-null key
    return await _prefs!.remove(key); // Returns true if the key was removed successfully
  }

  // Method to clear all data in Shared Preferences
  static Future<bool> clear() async {
    if (_prefs == null) return false; // Ensure _prefs is initialized
    return await _prefs!.clear(); // Returns true if all data was cleared
  }
}