import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:paylater_startup/account/balance/balance_screen.dart';
import 'package:paylater_startup/account/bills/bills_screen.dart';
import 'package:paylater_startup/account/bookings/bookings_screen.dart';
import 'package:paylater_startup/account/bookings/details/details.dart';
import 'package:paylater_startup/account/customer_service/screen.dart';
import 'package:paylater_startup/account/messages/chat_screen.dart';
import 'package:paylater_startup/account/messages/message_screen/message_screen.dart';
import 'package:paylater_startup/account/paylater/paylater_screen.dart';
import 'package:paylater_startup/account/settings/settings_screen.dart';
import 'package:paylater_startup/cart/PayNow_screen/payment_methods.dart';
import 'package:paylater_startup/cart/payment_success.dart';
import 'package:paylater_startup/controller/auth_controller.dart';
import 'package:paylater_startup/controller/bindings/auth_binding.dart';
import 'package:paylater_startup/controller/root.dart';
import 'package:paylater_startup/paylater_verification/success_page.dart';
import 'package:paylater_startup/paylater_verification/verification.dart';
import 'package:paylater_startup/product/product_description_page/desc_screen.dart';
import 'package:paylater_startup/product/shopping_page/shopping_page.dart';
import 'package:paylater_startup/product/store_page/store_page.dart';
import 'package:paylater_startup/service/description_page/screen.dart';
import 'package:paylater_startup/service/service_page/service_screen.dart';
import 'package:paylater_startup/service/store_page/store_page.dart';
import 'package:paylater_startup/util/PIN/pin_screen.dart';
import 'package:paylater_startup/util/theme.dart';

import 'account/transaction_history/transaction_screen.dart';
import 'category/category_page.dart';
import 'controller/user_controller.dart';
import 'dashboard/dashboard_page.dart';
import 'login_screen/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      initialBinding: AuthBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Paylater Startup',
      theme: theme(),
      // initialRoute: '/home',
      defaultTransition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 1),
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => DashboardPage()),
        GetPage(name: '/product_desc', page: () => productDesc_screen()),
        GetPage(name: '/service_desc', page: () => ServiceDesc()),
        GetPage(name: '/category_screen', page: () => const CategoryPage()),
        GetPage(name: '/shopping_screen', page: () => const shopping_page()),
        GetPage(name: '/service_screen', page: () => const ServiceScreen()),
        GetPage(name: '/store_screen', page: () => const store_page()),
        GetPage(name: '/servicestore_screen', page: () => const ServiceStorePage()),
        GetPage(name: '/verif', page: () => const payLater_Verification()),
        GetPage(name: '/verif_success', page: () => const success_page()),
        GetPage(name: '/balance_page', page: () => const BalanceScreen()),
        GetPage(name: '/paylater_page', page: () => const PayLaterScreen()),
        GetPage(name: '/payment_method', page: () => const PaymentMethods()),
        GetPage(name: '/payment_success', page: () => const PaymentSuccess()),
        GetPage(name: '/pin_screen', page: () => const PinScreen()),
        GetPage(name: '/TransactionHistory_page', page: () => const TransactionHistory()),
        GetPage(name: '/settings_page', page: () => const SettingsScreen()),
        GetPage(name: '/bookings_page', page: () => const BookingsScreen()),
        GetPage(name: '/bookingDetail_page', page: () => const DetailsTemplate()),
        GetPage(name: '/bills_page', page: () => const BillsScreen()),
        GetPage(name: '/chat_page', page: () => const ChatScreen()),
        GetPage(name: '/message_page', page: () => const MessageScreen()),
        GetPage(name: '/CustomerService_page', page: () => const CustomerServiceScreen()),
      ],
      // home: const DashboardPage(),
      home: Root(),
      );
  }
}
