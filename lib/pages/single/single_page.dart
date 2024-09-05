import 'package:alfasoft_task/pages/single/widgets/draggable_scroll_box.dart';
import 'package:alfasoft_task/utils/constans/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({super.key, required this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        automaticallyImplyLeading: true,
        actions: [
          Icon(
            Icons.favorite,
            color: AppColors.white,
            size: 32.sp,
          ),
          12.horizontalSpace,
        ],
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_rounded,
                color: AppColors.white)),
        elevation: 0,
        backgroundColor: AppColors.transparent,
      ),
      body: GestureDetector(
        onTap: () {},
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.12,
              minChildSize: 0.1,
              maxChildSize: 0.8,
              builder: (context, scrollController) {
                return const DraggableScrollBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
