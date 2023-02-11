import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/Features/Theme/Custom_Theme.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;

  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onTap,
        splashRadius: 22.r,
        iconSize: iconSize ?? 22.sp,
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(minWidth: minWidth ?? 40.w),
        icon: Icon(
          icon,
          color: iconColor ?? context.Ctheme.greyColor,
        ));
  }
}
