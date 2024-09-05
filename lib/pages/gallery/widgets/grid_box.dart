import 'package:alfasoft_task/utils/constans/app_borders.dart';
import 'package:alfasoft_task/utils/constans/app_color.dart';
import 'package:flutter/material.dart';

class GridBox extends StatelessWidget {
  const GridBox({super.key, required this.img, this.onTap});

  final String img;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.dark.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(1, 3),
            ),
          ],
          borderRadius: AppBorders.all16,
        ),
        child: ClipRRect(
          borderRadius: AppBorders.all16,
          child: Image.network(
            img,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
