import 'package:amazon/common/widgets/account_button.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(text: 'Your Orders', onTapAction: () {}),
            AccountButton(text: 'Turn Seller', onTapAction: () {}),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            AccountButton(text: 'Your Wish List', onTapAction: () {}),
            AccountButton(text: 'Log Out', onTapAction: () {}),
          ],
        ),
      ],
    );
  }
}
