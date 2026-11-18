
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int positiveClicks = 0;
  int negativeClicks = 100;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de clics'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de clics +'),
            Text('$positiveClicks'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  positiveClicks++;
                });
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 20),
            const Text('Número de clics -'),
            Text('$negativeClicks'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (negativeClicks > 0) {
                    negativeClicks--;
                  }
                });
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(height: 20),
            const Text('Total'),
            Text('$total'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  total = negativeClicks - positiveClicks;
                });
              },
              child: const Text(
                '=',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
