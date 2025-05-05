import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/gen/assets.gen.dart';
import 'package:gluco_guide/translations/locale_keys.g.dart';
import 'package:gluco_guide/view/molcules/gluco_guide_app_bar.dart';

final AutoDisposeFutureProvider<Uint8List>
getWorkoutGifFutureProvider =
FutureProvider.autoDispose<Uint8List>(
(AutoDisposeFutureProviderRef<Uint8List> ref) async{
  ByteData gifData = await rootBundle.load(Assets.gif.workoutgif);
  Uint8List gifBytes = gifData.buffer.asUint8List();
  return gifBytes;
});


class WorkoutDetailsPage extends StatelessWidget {
  const WorkoutDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: GlucoGuideAppBar(text: LocaleKeys.workoutDetails.tr()),
      body: Column(children: [
          Consumer(builder: (context, ref, child) {
    return  ref.watch(getWorkoutGifFutureProvider).when(
    data: (gifBytes) {
    return Image.memory(gifBytes);
    },
    loading: () => const CircularProgressIndicator(),
    error: (error, stackTrace) => const Text('Error loading GIF'),
    );
    }),
        context.vSpaceBox20,
        const Text("Henda"),
        context.vSpaceBox20,
        const Text("koko")

      ],),
    );
  }
}
