import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/view/pages/patient/main_page.dart';
import 'core/constants/app_constants.dart';
import 'core/themes/theme_manager.dart';
import 'translations/codegen_loader.g.dart';


class GlucoGuideApp extends ConsumerWidget {
  const GlucoGuideApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EasyLocalization(
      path: AppConstants.shared.translationPath,
      assetLoader: const CodegenLoader(),
      fallbackLocale: Locale(AppConstants.shared.defaultAppLocale),
      saveLocale: true,
      useOnlyLangCode: true,
      supportedLocales: <Locale>[
        Locale(AppConstants.shared.defaultAppLocale),
      ],
      child: ScreenUtilInit(
        designSize: Size(
            AppConstants.shared.designWidth, AppConstants.shared.designHeight),
        minTextAdapt: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            title: "Gluco Guide",
            theme: ThemeManager.shared.getAppTheme(context),
            // themeMode: ref.watch(appThemeProvider).themeMode,
            home: child ?? Container(),
          );
        },
        child: const MainScreen(title: 'henda',),
      ),
    );
  }
}
