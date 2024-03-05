import 'package:dastory/feature/language/data/model/language_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguangeRemote {
  Future<bool> setLanguange(Language selectedLanguage) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final res = await pref.setString('lang', selectedLanguage.text);
    return res;
  }

  Future<String> getLanguange() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final res = pref.getString('lang') ?? '';
    return res;
  }
}
