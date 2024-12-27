import 'package:class_assignment_2/cubit/area_of_rectangle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RectangleAreaView extends StatelessWidget {
  const RectangleAreaView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController lengthController = TextEditingController();
    final TextEditingController breadthController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Suyogya Rectangle Area Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: lengthController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Length',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: breadthController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Breadth',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<RectangleAreaCubit, double>(
              builder: (context, state) {
                return Text(
                  'Area: ${state.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final double? length = double.tryParse(lengthController.text);
                final double? breadth = double.tryParse(breadthController.text);

                if (length != null && breadth != null) {
                  context
                      .read<RectangleAreaCubit>()
                      .calculateArea(length, breadth);
                }
              },
              child: const Text('Calculate Area'),
            ),
          ],
        ),
      ),
    );
  }
}
