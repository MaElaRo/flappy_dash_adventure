import 'package:flutter/material.dart';

class StepCounterButtons extends StatefulWidget {
  const StepCounterButtons({
    super.key,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    this.step = 10,
  });

  final double value;
  final double min;
  final double max;
  final double step;
  final ValueChanged<double> onChanged;

  @override
  State<StepCounterButtons> createState() => _StepCounterButtonsState();
}

class _StepCounterButtonsState extends State<StepCounterButtons> {
  late double value;

  @override
  void initState() {
    super.initState();

    value = widget.value;
  }

  @override
  void didUpdateWidget(covariant StepCounterButtons oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.value != oldWidget.value) {
      value = widget.value;
    }
  }

  void increment() {
    setState(() {
      if (value + widget.step <= widget.max) {
        value += widget.step;
      } else {
        value = widget.max;
      }
    });

    widget.onChanged(value);
  }

  void decrement() {
    setState(() {
      if (value - widget.step >= widget.min) {
        value -= widget.step;
      } else {
        value = widget.min;
      }
    });

    widget.onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: decrement,
          icon: const Icon(Icons.remove),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          value.toStringAsFixed(0).padLeft(3),
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          width: 8,
        ),
        IconButton(
          onPressed: increment,
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
