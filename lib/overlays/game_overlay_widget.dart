import 'dart:math';

import 'package:flutter/material.dart';

class GameOverlayWidget extends StatelessWidget {
  const GameOverlayWidget({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          constraints: BoxConstraints(
            maxWidth: min(MediaQuery.of(context).size.width - 32, 500),
            maxHeight: MediaQuery.of(context).size.height - 32,
            minHeight: 300,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
