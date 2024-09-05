import 'package:alfasoft_task/utils/constans/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/curated_galleries_model.dart';
import '../../../utils/constans/app_borders.dart';
import '../../../utils/constans/app_color.dart';
import '../../../utils/constans/app_texts.dart';

class GalleryListView extends StatelessWidget {
  const GalleryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.curatedGalleries,
          style: TextStyle(fontSize: 14.sp),
        ),
        SizedBox(height: 8.h),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CuratedGalleriesModel.items.length,
            itemBuilder: (context, index) {
              final item = CuratedGalleriesModel.items[index];
              return Padding(
                padding: AppPaddings.h8,
                child: Column(
                  children: [
                    Container(
                      height: 72.h,
                      width: 109.w,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: AppBorders.all8,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.dark.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(1, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: AppBorders.all8,
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      item.title,
                      style: TextStyle(fontSize: 12.sp),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
