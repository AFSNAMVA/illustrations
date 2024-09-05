import 'package:alfasoft_task/provider/bottom_navbar_provider.dart';
import 'package:alfasoft_task/utils/constans/app_color.dart';
import 'package:alfasoft_task/utils/constans/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../pages/gallery/gallery_page.dart';
import 'floating_action.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottomNavbarProvider = Provider.of<BottomNavbarProvider>(context);

    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.white,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.r,
        shape: const CircularNotchedRectangle(),
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildNavItem(
                Icons.compass_calibration_outlined, 0, bottomNavbarProvider),
            _buildNavItem(Icons.border_all_outlined, 1, bottomNavbarProvider),
            24.horizontalSpace,
            _buildNavItem(Icons.border_color_outlined, 2, bottomNavbarProvider),
            _buildNavItem(Icons.person_4_outlined, 3, bottomNavbarProvider),
          ],
        ),
      ),
      floatingActionButton: const Padding(
        padding: AppPaddings.all8,
        child: FloatingAction(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(
        index: bottomNavbarProvider.selectedIndex,
        children: [
          Container(),
          const GalleryPage(),
          Container(),
          Container(),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index, BottomNavbarProvider provider) {
    final bool isSelected = provider.selectedIndex == index;
    return GestureDetector(
      onTap: () {
        if (provider.selectedIndex != index) {
          provider.navigateBottomBar(index);
        }
      },
      child: ShaderMask(
        shaderCallback: (bounds) {
          return isSelected
              ? AppColors.primaryGradient.createShader(bounds)
              : const LinearGradient(colors: [AppColors.grey, AppColors.grey])
                  .createShader(bounds);
        },
        child: Icon(
          icon,
          size: 35,
          color: AppColors.white,
        ),
      ),
    );
  }
}
