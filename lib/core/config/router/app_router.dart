
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarthome/features/auth/Signup/presentation/widgets/signup_logo.dart';

import '../../../features/Home/presentation/screens/home_screen.dart';
import '../../../features/Rooms/screens/room_screen.dart';
import '../../../features/address/screens/delivert_adress_screen.dart';
import '../../../features/auth/Signup/presentation/screens/signup_screen.dart';
import '../../../features/auth/change_password/presentation/screens/change_password.dart';

import '../../../features/auth/login/presentation/screens/login_screen.dart';
import '../../../features/onboarding/presentation/onboarding_scrren.dart';

import '../../../features/setting/screens/setting_profile.dart';
import '../../../features/voucher/screens/voucher_screen.dart';
import '../../../features/welcome/screens/welcome_screen.dart';

abstract class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomeScreen.routeName:
        return MaterialPageRoute(builder: (c) => const WelcomeScreen());
      case OnboardingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
     case HomeScreen.routeName:
       return MaterialPageRoute(builder: (_) => const HomeScreen());
    //  case SignUpScreen.routeName:
       // return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case ChangePasswordScreen.routeName:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
        case RoomsScreen.routeName:
       return MaterialPageRoute(builder: (_) => const RoomsScreen());
       case SignupScreen.routeName:
       return MaterialPageRoute(
           builder: (_) => const SignupScreen());
      //case SearchScreen.routeName:
        //return MaterialPageRoute(builder: (_) => const SearchScreen());
      // case CreateNewPasswordScreen.routeName:
      //   return MaterialPageRoute(
      //       builder: (_) => const CreateNewPasswordScreen());
      // case SettingScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
   // SettingScreen   case NotificationScreen.routeName:
   //      return MaterialPageRoute(builder: (_) => const NotificationScreen());
   //    case AddNewCardScreen.routeName:
   //      return MaterialPageRoute(builder: (_) => const AddNewCardScreen());
   //  case ProfileScreen.routeName:
   //  return MaterialPageRoute(builder: (_) => const ProfileScreen());
   //    case RateProductScreen.routeName:
   //      return MaterialPageRoute(builder: (_) => const RateProductScreen());
   //    case ProductDetailsContent.routeName:
   //      return MaterialPageRoute(builder: (_) => ProductDetailsContent());
   //    case TrackOrderScreen.routeName:
   //      return MaterialPageRoute(builder: (_) => const TrackOrderScreen());
      case VoucherScreen.routeName:
        return MaterialPageRoute(builder: (_) => const VoucherScreen());


      // case ResultsScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const ResultsScreen(query: '',));

      //
      // case AddressScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const AddressScreen());
      // case DiscoverScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const DiscoverScreen());
      //  case ProductDetailsContentScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const ProductDetailsContentScreen());
      // case ShippingScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const ShippingScreen());
      // case OrderCompletedScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const OrderCompletedScreen());
      // case PaymentScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const PaymentScreen());
      // case CheckoutScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const CheckoutScreen());
      // case OrderInfoScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const OrderInfoScreen());
      // case MyOrdersScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const MyOrdersScreen());
      //
      // case OrderDetailsScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const OrderDetailsScreen());
      // case CheckoutPaymentScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const CheckoutPaymentScreen());
      //
      // case WishlistBoardsScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const WishlistBoardsScreen());
      // case MyNewCartScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const MyNewCartScreen());
      // case WishlistScreen.routeName:
      //   return MaterialPageRoute(builder: (_) => const WishlistScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route define for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
