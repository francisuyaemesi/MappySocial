import 'package:mappy_social/pages/edit_profile_page.dart';
import 'package:mappy_social/pages/home_page.dart';
import 'package:mappy_social/pages/login_page.dart';
import 'package:mappy_social/pages/main_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit_profile': (context) => EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
