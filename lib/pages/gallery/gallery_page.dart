import 'package:alfasoft_task/pages/gallery/widgets/gallery_gridview.dart';
import 'package:alfasoft_task/pages/gallery/widgets/gallery_listview.dart';
import 'package:alfasoft_task/utils/constans/app_color.dart';
import 'package:alfasoft_task/utils/constans/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.primary,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  AppTexts.illustrations,
                  style:
                      TextStyle(fontSize: 34.sp, fontWeight: FontWeight.w700),
                ),
                const GalleryListView(),
                8.verticalSpace,
                const GalleryGridView()
              ],
            ),
          ),
        ));
  }
}
