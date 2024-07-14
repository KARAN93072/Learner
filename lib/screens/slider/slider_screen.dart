import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learner/screens/slider/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({super.key});
  static String id = 'SliderScreen';

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Slider(
                min: 0,
                max: 1,
                value: value.sValue,
                onChanged: (newValue) {
                  sliderProvider.setValue(newValue);
                });
          }),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: Consumer<SliderProvider>(builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent.withOpacity(value.sValue),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.yellow.withOpacity(value.sValue),
                      ),
                    ),
                  )
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
