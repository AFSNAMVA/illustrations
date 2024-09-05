import 'package:alfasoft_task/models/grid_box_model.dart';
import 'package:alfasoft_task/utils/constans/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../single/single_page.dart';
import 'grid_box.dart'; 

class GalleryGridView extends StatelessWidget {
  const GalleryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:700.h,
      child: Padding(
        padding: AppPaddings.all8,
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: GridBoxModel.items.map((item) {
            return StaggeredGridTile.count(
              crossAxisCellCount: item.crossAxisCellCount,
              mainAxisCellCount: item.mainAxisCellCount,
              child: GridBox(
                img: item.imageUrl,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SinglePage(img: item.imageUrl,),
                    ),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
