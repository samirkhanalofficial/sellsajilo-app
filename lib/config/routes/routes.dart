import 'package:get/get.dart';
import 'package:sellsajilo/config/routes/routes_name.dart';
import 'package:sellsajilo/views/screens/auth/login_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: RoutesName.home,
    page: () => const LoginScreen(),
  )
];
