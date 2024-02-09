import 'package:flutter/material.dart';
import '../../gen/colors.gen.dart';

class AppImageNetwork extends StatelessWidget {
  const AppImageNetwork({super.key,this.imageURL});
  final String? imageURL;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageURL??'',
      scale: 1,
      errorBuilder: ((BuildContext context, Object error, StackTrace? stackTrace) =>
        const Icon(Icons.broken_image, color: ColorName.primaryColor,size: 40,)),
      loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(
          child: CircularProgressIndicator(
            color: ColorName.primaryColor,
          ),
        );
      },
    );
  }
}
