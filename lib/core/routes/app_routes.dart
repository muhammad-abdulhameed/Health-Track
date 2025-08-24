import 'package:go_router/go_router.dart';
import 'package:health_track/features/app_entry/welcome/presentation/pages/welcome_screen.dart';
import 'package:health_track/features/auth/login/presentation/pages/login_screen.dart';
import 'package:health_track/features/auth/register/presentation/pages/register_screen.dart';
import 'package:health_track/features/auth/set_password/presentation/pages/set_password_screen.dart';


import '../../features/app_entry/onBoarding/data/data_sources/on_boarding_local_data_source.dart';
import '../../features/app_entry/onBoarding/presentation/pages/on_boarding_screen.dart';

abstract class AppRoutes {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String setPassword = '/setPassword';
  static const String homeLayout = '/homeLayout';
  static const String productDetails = '/productDetails';
  static const String popularProducts = '/popularProducts';
  static const String categories = '/categories';
  static const String bestForYou = '/bestForYou';
  static const String buyAgain = '/buyAgain';
  static const String brands = '/brands';
}
final GoRouter appRouter = GoRouter(

  initialLocation: OnBoardingLocalDataSource.getOnBoardingSeen()?AppRoutes.welcome:AppRoutes.onboarding,
  routes: [
    GoRoute(
      path: AppRoutes.onboarding,
      name: AppRoutes.onboarding,
      builder: (context, state) =>  OnBoardingScreen(),
    ),
    GoRoute(
      path: AppRoutes.welcome,
      name: AppRoutes.welcome,
      builder: (context, state) =>  WelcomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.login,
      name: AppRoutes.login,
      builder: (context, state) =>  LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.register,
      name: AppRoutes.register,
      builder: (context, state) =>  RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.setPassword,
      name: AppRoutes.setPassword,
      builder: (context, state) => SetPasswordScreen(),
    ),
    /*
    GoRoute(
      path: AppRoutes.homeLayout,
      name: AppRoutes.homeLayout,
      builder: (context, state) => const HomeLayoutView(),
      routes: [
        GoRoute(
          path: 'productDetails',
          name: AppRoutes.productDetails,
          builder: (context, state) {
            // final product = state.extra;
            return const Text('Product Details Page Placeholder');
          },
        ),
        GoRoute(
          path: 'popularProducts',
          name: AppRoutes.popularProducts,
          builder: (context, state) {
            // final product = state.extra;
            return const Text('Popular Product Page Placeholder');
          },
        ),
        GoRoute(
          path: 'categories',
          name: AppRoutes.categories,
          builder: (context, state) {
            // final product = state.extra;
            return const Text('Categories Page Placeholder');
          },
        ),
        GoRoute(
          path: 'bestForYou',
          name: AppRoutes.bestForYou,
          builder: (context, state) {
            // final product = state.extra;
            return const Text('Best For You Page Placeholder');
          },
        ),
        GoRoute(
          path: 'brands',
          name: AppRoutes.brands,
          builder: (context, state) {
            // final product = state.extra;
            return const Text('Brands Page Placeholder');
          },
        ),
        GoRoute(
          path: 'buyAgain',
          name: AppRoutes.buyAgain,
          builder: (context, state) {
            // final product = state.extra;
            return const Text('buyAgain Page Placeholder');
          },
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.login,
      name: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
        path: "/search",
        name: "/search",
        builder: (context, state) => const SearchBody()
    ),*/
    // GoRoute(
    //   path: AppRoutes.login,
    //   name: AppRoutes.login,
    //   builder: (context, state) => const SignUpView(),
    // ),
    // GoRoute(
    //   path: AppRoutes.homeLayout,
    //   name: AppRoutes.homeLayout,
    //   builder: (context, state) => const HomeLayoutView(),
    //   routes: [
    //     // هنا ممكن تضيف الـ sub-routes زي productDetails
    //     GoRoute(
    //       path: 'productDetails', // المسار هيكون /homeLayout/productDetails
    //       name: AppRoutes.productDetails,
    //       builder: (context, state) {
    //         // هنا ممكن تستقبل الـ product object لو هتبعت بيانات
    //         final product = state.extra; // تأكد من الـ casting الصحيح
    //         // return ProductDetailsView(product: product); // مثال
    //         return const Text('Product Details Page'); // placeholder
    //       },
    //     ),
    //   ],
    // ),
    // ... ممكن تضيف مسارات Onboarding أو أي مسارات تانية هنا
  ],
);
