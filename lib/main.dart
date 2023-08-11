import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jacksi_ltd_task/core/services/services_locator.dart';
import 'package:jacksi_ltd_task/features/products/presentation/screens/products_screen.dart';

import 'core/config/constants/system_config.dart';
import 'core/hive/hive_controller.dart';
import 'core/themes/light_theme.dart';
import 'features/add_product/presentation/controller/add_product_bloc.dart';
import 'features/products/presentation/controller/products_bloc.dart';

void main() async {
  _init();
  runApp(const MyApp());
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  await HiveController().initHive();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<AddProductBloc>()),
        BlocProvider(create: (context) => sl<ProductsBloc>())
      ],
      child: ScreenUtilInit(
          useInheritedMediaQuery: true,
          designSize: const Size(428, 926),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, __) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: SystemConfig.appName,
              theme: themeLight(context),
              locale: const Locale("ar"),
              supportedLocales: const [
                Locale("ar"),
              ],
              localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              home: const ProductsScreen(),
            );
          }),
    );
  }
}
