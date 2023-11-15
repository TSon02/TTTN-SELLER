import 'package:flutter/material.dart';

class FeatureItemWidget extends StatelessWidget {
  const FeatureItemWidget(
      {super.key,
      required this.iconData,
      required this.featureName,
      required this.function});
  final IconData iconData;
  final String featureName;
  final void Function() function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 6),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(iconData),
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            featureName,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
