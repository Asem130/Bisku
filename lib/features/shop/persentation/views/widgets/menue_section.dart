import 'package:bisku/features/shop/persentation/views/widgets/menue_section_list_view.dart';
import 'package:flutter/material.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const MenuSectionListView()
      ],
    );
  }
}