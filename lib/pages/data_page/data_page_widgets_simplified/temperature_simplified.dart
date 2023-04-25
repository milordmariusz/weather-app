import 'package:flutter/material.dart';

class TemperatureSimplify extends StatelessWidget {
  const TemperatureSimplify({
    super.key,
    required this.temperature,
  });

  final double temperature;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          children: [
            Expanded(
              child: FittedBox(
                child: Text(
                  "$temperature°C",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
