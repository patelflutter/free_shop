import 'package:get/get.dart';

import '../modules/Base/bindings/base_binding.dart';
import '../modules/Base/views/base_view.dart';
import '../modules/Cart/bindings/cart_binding.dart';
import '../modules/Cart/views/cart_view.dart';
import '../modules/Dashbord/bindings/dashbord_binding.dart';
import '../modules/Dashbord/views/dashbord_view.dart';
import '../modules/Languse/bindings/languse_binding.dart';
import '../modules/Languse/views/languse_view.dart';
import '../modules/OnBording/bindings/on_bording_binding.dart';
import '../modules/OnBording/views/on_bording_view.dart';
import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/Search_Product/bindings/search_product_binding.dart';
import '../modules/Search_Product/views/search_product_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';
import '../modules/Wishlist/bindings/wishlist_binding.dart';
import '../modules/Wishlist/views/wishlist_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ON_BORDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ON_BORDING,
      page: () => const OnBordingView(),
      binding: OnBordingBinding(),
    ),
    GetPage(
      name: _Paths.LANGUSE,
      page: () => const LanguseView(),
      binding: LanguseBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.DASHBORD,
      page: () => const DashbordView(),
      binding: DashbordBinding(),
    ),
    GetPage(
      name: _Paths.BASE,
      page: () => BaseView(),
      binding: BaseBinding(),
    ),
    GetPage(
      name: _Paths.WISHLIST,
      page: () => const WishlistView(),
      binding: WishlistBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_PRODUCT,
      page: () => const SearchProductView(),
      binding: SearchProductBinding(),
    ),
  ];
}
