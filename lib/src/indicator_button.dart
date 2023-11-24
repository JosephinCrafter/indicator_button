// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class IndicatorButton extends StatefulWidget {
  const IndicatorButton({
    Key? key,
    this.child,
    this.indicator,
    required this.showIndicator,
  }) : super(key: key);

  final Widget? child;
  final Widget? indicator;
  final bool showIndicator;

  @override
  State<IndicatorButton> createState() => _IndicatorButtonState();
}

class _IndicatorButtonState extends State<IndicatorButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.child ?? Container(),
        widget.showIndicator
            ? widget.indicator ??
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).primaryColor,
                  ),
                )
            : Container(),
      ],
    );
  }
}
