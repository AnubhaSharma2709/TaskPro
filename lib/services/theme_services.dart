import 'package:get_storage/get_storage.dart';

class ThemeServices {
final _box = GetStorage();
final _key = 'isDarkMode';

bool _loadThemeFromeBox() =>_box.read(_key)??false;



}