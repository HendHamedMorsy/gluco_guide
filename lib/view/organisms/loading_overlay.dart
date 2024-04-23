import 'dart:async' show StreamController;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../controllers/loading_screen_controller.dart';
import '../../core/services/extensions.dart';
import '../../core/services/log_manager.dart';
import '../../translations/locale_keys.g.dart';

class LoadingOverlay {
  LoadingOverlay._();

  static final LoadingOverlay _shared = LoadingOverlay._();
  factory LoadingOverlay.instance() => _shared;

  LoadingScreenController? _controller;

  void show({required BuildContext context, String text = LocaleKeys.loading}) {
    if (_controller?.update(text) ?? false) {
      return;
    } else {
      _controller = _showOverlay(context: context, text: text.tr());
    }
  }

  void hide() async {
    LogManager.logToConsole("hide loading screen");
    _controller?.close();
    _controller = null;
  }

  LoadingScreenController? _showOverlay(
      {required BuildContext context, required String text}) {
    final OverlayState state = Overlay.of(context);

    final StreamController<String> textController = StreamController<String>();
    textController.add(text);
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Size size = renderBox.size;
    final OverlayEntry overlay = OverlayEntry(
      builder: (BuildContext context) => Material(
        color: Colors.black.withAlpha(150),
        child: Center(
            child: Container(
          constraints: BoxConstraints(
            maxWidth: size.width * 0.8,
            maxHeight: size.height * 0.8,
            minWidth: size.width * 0.5,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onLongPress: hide,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  const CircularProgressIndicator.adaptive(),
                  const SizedBox(
                    height: 10,
                  ),
                  StreamBuilder<String>(
                    stream: textController.stream,
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.requireData,
                          style: context.textTheme.bodyMedium,
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  )
                ]),
              ),
            ),
          ),
        )),
      ),
    );
    state.insert(
      overlay,
    );
    return LoadingScreenController(close: () async {
      await textController.close();
      overlay.remove();
      return Future<bool>.value(true);
    }, update: (String text) {
      textController.add(text);
      return true;
    });
  }
}
