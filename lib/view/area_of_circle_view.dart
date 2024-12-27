import 'package:class_assignment_2/cubit/area_of_circle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CircleAreaCubitView extends StatelessWidget {
  const CircleAreaCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController radiusController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Suyogya Circle Area Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: radiusController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Radius',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final double? radius = double.tryParse(radiusController.text);
                if (radius != null && radius > 0) {
                  context.read<AreaOfCircleCubit>().calculateArea(radius);
                }
              },
              child: const Text('Calculate Area'),
            ),
            const SizedBox(height: 16),
            BlocBuilder<AreaOfCircleCubit, double>(
              builder: (context, area) {
                return Text(
                  'Area: ${area.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
