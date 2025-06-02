import 'package:flutter/material.dart';
import 'package:flutter_enum/order_status_item_view.dart';



class Enums extends StatefulWidget {
  const Enums({Key? key}) : super(key: key);

  @override
  State<Enums> createState() => _EnumsState();
}

class _EnumsState extends State<Enums> {
  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: themeColors.background,
      appBar: AppBar(
        elevation: 0,
        title: const Column(
          children: [
            Text('Order tracking'),
            Text(
              '#ORDER123',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 48,
          bottom: 16,
        ),
        children: [
          OrderStatusItemView(
            color: OrderStatusEnum.processing.color,
            title: OrderStatusEnum.processing.title,
            subtitle: OrderStatusEnum.processing.description,
            icon: OrderStatusEnum.processing.icon,
            showLine: true,
            isActive: true,
          ),
          OrderStatusItemView(
            color: OrderStatusEnum.inTransit.color,
            title: OrderStatusEnum.inTransit.title,
            subtitle: OrderStatusEnum.inTransit.description,
            icon: OrderStatusEnum.inTransit.icon,
            showLine: true,
            isActive: true,
          ),
          OrderStatusItemView(
            color: OrderStatusEnum.delivered.color,
            title: OrderStatusEnum.delivered.title,
            subtitle: OrderStatusEnum.delivered.description,
            icon: OrderStatusEnum.delivered.icon,
            showLine: false,
            isActive: false,
          ),
        ],
      ),
    );
  }
}


enum OrderStatusEnum {
  processing(
      color: Colors.amber,
      title: 'Processing',
      description: 'Your order is being processed.',
      icon: Icons.hourglass_top_outlined
  ),
  inTransit(
      color: Colors.blue,
      title: 'InTransit',
      description: 'Your order is on it\'s way to you.',
      icon: Icons.local_shipping_outlined
  ),
  delivered(
      color: Colors.green,
      title: 'Delivered',
      description: 'Thank you for shopping with us.',
      icon: Icons.task_alt_outlined
  );

  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const OrderStatusEnum({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}


// enum OrderStatusEnum {
//   processing,
//   inTransit,
//   delivered;
//
//   String get humanReadableNam {
//     switch (this) {
//       case OrderStatusEnum.processing:
//         return 'Processing';
//       case OrderStatusEnum.inTransit:
//         return 'InTransit';
//       case OrderStatusEnum.delivered:
//         return 'Delivered';
//     }
//   }
// }