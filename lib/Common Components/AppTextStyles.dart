import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTextStyles
{
  // Base TextStyles for performance optimization
  static final TextStyle _baseRoboto = GoogleFonts.roboto();
  static final TextStyle _baseInter = GoogleFonts.inter();

  // ------------------------------------------------------------------------
  // Font Styles by Type (Roboto)
  // ------------------------------------------------------------------------

  /// Roboto Regular styles
  static TextStyle get robotoRegular12 => _baseRoboto.copyWith(
    fontSize: 12.sp,
    height: 16/12,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get robotoRegular14 => _baseRoboto.copyWith(
    fontSize: 14.sp,
    height: 20/14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get robotoRegular16 => _baseRoboto.copyWith(
    fontSize: 16.sp,
    height: 24/16,
    fontWeight: FontWeight.normal,
  );

  /// Roboto SemiBold styles
  static TextStyle get robotoSemiBold16 => _baseRoboto.copyWith(
    fontSize: 16.sp,
    height: 24/16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle get robotoSemiBold24 => _baseRoboto.copyWith(
    fontSize: 24.sp,
    height: 32/16,
    fontWeight: FontWeight.w600,
  );

  // ------------------------------------------------------------------------
  // Font Styles by Type (Inter)
  // ------------------------------------------------------------------------

  /// Inter Regular styles
  static TextStyle get interRegular16 => _baseInter.copyWith(
    fontSize: 16.sp,
    height: 24/16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get interRegular14 => _baseInter.copyWith(
    fontSize: 14.sp,
    height: 20/12.4,
    fontWeight: FontWeight.w400,
  );

  /// Inter Medium styles
  static TextStyle get interMedium15_9 => _baseInter.copyWith(
    fontSize: 15.9.sp,
    height: 24/15.9,
    fontWeight: FontWeight.w500,
  );

  static TextStyle get interMedium12 => _baseInter.copyWith(
    fontSize: 12.sp,
    height: 16/12,
    fontWeight: FontWeight.w500,
  );

  ///Inter Semi Bold styles
  static TextStyle get interSemiBold24 => _baseInter.copyWith(
    fontSize: 24.sp,
    height: 32/24,
    fontWeight: FontWeight.w600,
  );

  /// Inter Bold styles
  static TextStyle get interBold12 => _baseInter.copyWith(
    fontSize: 12.sp,
    height: 16/12,
    fontWeight: FontWeight.bold,
  );

  // ------------------------------------------------------------------------
  // Semantic Text Styles
  // ------------------------------------------------------------------------

  /// Label styles
  static TextStyle get labelSmall => _baseRoboto.copyWith(
    fontSize: 11.8.sp,
    height: 16/11.8,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get labelMedium => _baseRoboto.copyWith(
    fontSize: 14.sp,
    height: 20/14,
    fontWeight: FontWeight.normal,
  );

  /// Button styles
  static TextStyle get buttonSmall12 => _baseRoboto.copyWith(
    fontSize: 12.sp,
    height: 16/12,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get buttonSmall12_6 => _baseRoboto.copyWith(
    fontSize: 12.6.sp,
    height: 20/12.6,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get buttonMedium13_7 => _baseRoboto.copyWith(
    fontSize: 13.7.sp,
    height: 20/13.7,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get buttonMedium13_9 => _baseRoboto.copyWith(
    fontSize: 13.9.sp,
    height: 20/13.9,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get buttonLarge16 => _baseRoboto.copyWith(
    fontSize: 16.sp,
    height: 24/16,
    fontWeight: FontWeight.normal,
  );

  /// Heading styles
  static TextStyle get heading1Small18 => _baseRoboto.copyWith(
    fontSize: 18.sp,
    height: 28/18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle get heading1Medium20 => _baseRoboto.copyWith(
    fontSize: 20.sp,
    height: 28/20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle get heading1Large24 => _baseRoboto.copyWith(
    fontSize: 24.sp,
    height: 32/24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle get heading1XLarge30 => _baseRoboto.copyWith(
    fontSize: 30.sp,
    height: 36/30,
    fontWeight: FontWeight.bold,
  );

  static TextStyle get heading2Small16 => _baseRoboto.copyWith(
    fontSize: 16.sp,
    height: 24/16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get heading2Medium18 => _baseRoboto.copyWith(
    fontSize: 18,
    height: 28/18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get heading2Large20 => _baseRoboto.copyWith(
    fontSize: 20,
    height: 28/20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get heading2Upper12 => _baseRoboto.copyWith(
    fontSize: 12,
    height: 16/12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    textBaseline: TextBaseline.alphabetic,
  ).apply(fontSizeFactor: 1.0, fontSizeDelta: 0.0);

  static TextStyle get heading3 => _baseRoboto.copyWith(
    fontSize: 16,
    height: 24/16,
    fontWeight: FontWeight.w500,
  );

  /// Input styles
  static TextStyle get inputSmall14 => _baseRoboto.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle get inputLarge16 => _baseRoboto.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  /// Options styles
  static TextStyle get options => _baseRoboto.copyWith(
    fontSize: 14,
    height: 17/14,
    fontWeight: FontWeight.normal,
  );

  /// Link styles
  static TextStyle get linkSmall12 => _baseRoboto.copyWith(
    fontSize: 12,
    height: 16/12,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );

  static TextStyle get linkMedium14_6 => _baseRoboto.copyWith(
    fontSize: 14.6,
    height: 24/14.6,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );

  // ------------------------------------------------------------------------
  // Helper Methods
  // ------------------------------------------------------------------------

  /// Add color to any text style
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  /// Add additional properties to any text style
  static TextStyle customize(TextStyle style, {
    double? letterSpacing,
    FontStyle? fontStyle,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    return style.copyWith(
      letterSpacing: letterSpacing,
      fontStyle: fontStyle,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }
}