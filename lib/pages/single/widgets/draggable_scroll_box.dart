import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constans/app_borders.dart';
import '../../../utils/constans/app_color.dart';
import '../../../utils/constans/app_padding.dart';
import '../../../utils/constans/app_texts.dart';

class DraggableScrollBox extends StatelessWidget {
  const DraggableScrollBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppBorders.top16,
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -20),
            child: Container(
              padding: AppPaddings.h56v12,
              decoration: BoxDecoration(
                gradient: AppColors.primaryGradient,
                borderRadius: AppBorders.all10,
              ),
              child:  Text(
                AppTexts.overview,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.border_color,
                color: AppColors.primary,
              ),
              8.horizontalSpace,
              const Text(
                AppTexts.digitalIllustration,
                style: TextStyle(color: AppColors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
