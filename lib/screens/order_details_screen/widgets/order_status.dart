import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/constants/enum/order_status.dart';
import 'package:trendy_treasures_seller/screens/order_details_screen/widgets/order_status_leading.dart';

class OrderStatusWidget extends StatelessWidget {
  const OrderStatusWidget(
      {super.key, required this.status, required this.currentStatusIndex});
  final String status;
  final int currentStatusIndex;
  @override
  Widget build(BuildContext context) {
    log(currentStatusIndex.toString());

    return Row(
      children: [
        const Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              OrderStatusLeading(
                color: Colors.red,
                iconData: Icons.shopping_cart_checkout,
              ),
              SizedBox(
                height: 15,
              ),
              OrderStatusLeading(
                color: Colors.blue,
                iconData: Icons.thumb_up_alt_outlined,
              ),
              SizedBox(
                height: 15,
              ),
              OrderStatusLeading(
                color: Colors.grey,
                iconData: Icons.fire_truck_outlined,
              ),
              SizedBox(
                height: 15,
              ),
              OrderStatusLeading(
                color: Colors.brown,
                iconData: Icons.done_all_outlined,
              ),
            ],
          ),
        ),
        Expanded(
          child: Stepper(
            physics: const NeverScrollableScrollPhysics(),
            margin: EdgeInsets.zero,
            controlsBuilder: (context, controller) {
              return const SizedBox();
            },
            stepIconBuilder: (stepIndex, stepState) {
              return stepIndex == currentStatusIndex
                  ? const Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : null;
            },
            // currentStep: _index,
            // onStepCancel: () {
            //   if (_index > 0) {
            //     setState(() {
            //       _index -= 1;
            //     });
            //   }
            // },
            // onStepContinue: () {
            //   if (_index <= 0) {
            //     setState(() {
            //       _index += 1;
            //     });
            //   }
            // },
            // onStepTapped: (int index) {
            //   setState(() {
            //     _index = index;
            //   });
            // },
            steps: <Step>[
              // const Step(
              //   isActive: true,
              //   content: SizedBox.shrink(),
              //   title: Text('Order Placed'),
              // ),
              // const Step(
              //   isActive: true,
              //   title: Text('Confirmed'),
              //   content: SizedBox.shrink(),
              // ),
              // const Step(
              //   // isActive: false,
              //   title: Text('On Delivery'),
              //   content: SizedBox.shrink(),
              // ),
              // const Step(
              //   // isActive: false,
              //   title: Text('Delivered'),
              //   content: SizedBox.shrink(),
              // ),
              for (int i = 0; i < OrderStatus.values.length; i++)
                Step(
                    isActive: i <= currentStatusIndex ? true : false,
                    title: Text(OrderStatus.values[i].name),
                    content: const SizedBox.shrink())
            ],
          ),
        ),
      ],
    );
  }
}
