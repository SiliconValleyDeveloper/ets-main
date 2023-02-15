import 'package:get/get.dart';

import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/rootApp/bindings/root_app_binding.dart';
import '../modules/rootApp/views/root_app_view.dart';
import '../modules/task/bindings/task_binding.dart';
import '../modules/task/views/task_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT_APP;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ROOT_APP,
      page: () =>  RootAppView(),
      binding: RootAppBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountPage(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.TASK,
      page: () =>  TaskView(),
      binding: TaskBinding(),
    ),
  ];
}
