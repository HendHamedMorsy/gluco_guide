import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/molcules/gluco_guide_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlucoGuideAppBar(
        text: LocaleKeys.settings.tr(),
      ),
    );
  }
}
