import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'color_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorController(),
    );
  }
}

class ColorController extends StatefulWidget {
  const ColorController({super.key});

  @override
  _ColorControllerState createState() => _ColorControllerState();
}

class _ColorControllerState extends State<ColorController> {
  final ColorStore store = ColorStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter RGB Controller'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Color Controller',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Observer(
              builder: (_) => ColorSlider(
                'R',
                store.red,
                (value) {
                  store.setRed(value);
                },
              ),
            ),
            const SizedBox(height: 20),
            Observer(
              builder: (_) => ColorSlider(
                'G',
                store.green,
                (value) {
                  store.setGreen(value);
                },
              ),
            ),
            const SizedBox(height: 20),
            Observer(
              builder: (_) => ColorSlider(
                'B',
                store.blue,
                (value) {
                  store.setBlue(value);
                },
              ),
            ),
            const SizedBox(height: 20),
            Observer(
              builder: (_) => Container(
                width: 100,
                height: 100,
                color: Color.fromRGBO(
                  store.red.toInt(),
                  store.green.toInt(),
                  store.blue.toInt(),
                  1,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Observer(
              builder: (_) => Text(
                'Hex Color: ${store.hexColor}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorSlider extends StatelessWidget {
  final String label;
  final double value;
  final Function(double) onChanged;

  const ColorSlider(this.label, this.value, this.onChanged, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        Expanded(
          child: Slider(
            value: value,
            min: 0,
            max: 255,
            onChanged: onChanged,
          ),
        ),
        Text(value.toStringAsFixed(0)), // Tampilkan nilai slider tanpa desimal
      ],
    );
  }
}
