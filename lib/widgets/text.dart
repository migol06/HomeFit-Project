import 'package:flutter/material.dart';

import 'constants/constant.dart';

enum HFTextSize { xxSmall, xSmall, small, medium, large, xLarge, xxLarge }

enum HFTextWeight { light, normal, semiBold, bold, extraBold }

enum HFTextStyle { normal, italic }

class HFText extends StatelessWidget {
  final String data;
  final Color color;
  final TextAlign textAlign;
  final HFTextWeight weight;
  final HFTextSize size;
  final HFTextStyle style;
  final int? maxLines;

  const HFText(this.data,
      {Key? key,
      this.color = HFColor.scorpion,
      this.textAlign = TextAlign.left,
      this.weight = HFTextWeight.normal,
      this.size = HFTextSize.medium,
      this.style = HFTextStyle.normal,
      this.maxLines})
      : super(key: key);

  const HFText.heading(this.data)
      : this.color = HFColor.plantation,
        this.textAlign = TextAlign.left,
        this.weight = HFTextWeight.bold,
        this.size = HFTextSize.xxLarge,
        this.style = HFTextStyle.normal,
        this.maxLines = null;

  const HFText.title(this.data)
      : this.color = HFColor.plantation,
        this.textAlign = TextAlign.left,
        this.weight = HFTextWeight.bold,
        this.size = HFTextSize.xLarge,
        this.style = HFTextStyle.normal,
        this.maxLines = null;

  const HFText.subheading(this.data)
      : this.color = HFColor.scorpion,
        this.textAlign = TextAlign.left,
        this.weight = HFTextWeight.bold,
        this.size = HFTextSize.large,
        this.style = HFTextStyle.normal,
        this.maxLines = null;

  const HFText.body1Light(this.data)
      : this.color = HFColor.scorpion,
        this.textAlign = TextAlign.left,
        this.weight = HFTextWeight.light,
        this.size = HFTextSize.medium,
        this.style = HFTextStyle.normal,
        this.maxLines = null;

  const HFText.body1(this.data)
      : this.color = HFColor.scorpion,
        this.textAlign = TextAlign.left,
        this.weight = HFTextWeight.normal,
        this.size = HFTextSize.medium,
        this.style = HFTextStyle.normal,
        this.maxLines = null;

  const HFText.body1SemiBold(this.data)
      : this.color = HFColor.scorpion,
        this.textAlign = TextAlign.left,
        this.weight = HFTextWeight.semiBold,
        this.size = HFTextSize.medium,
        this.style = HFTextStyle.normal,
        this.maxLines = null;

  const HFText.body1Bold(this.data)
      : this.color = HFColor.scorpion,
        this.textAlign = TextAlign.left,
        this.weight = HFTextWeight.bold,
        this.size = HFTextSize.medium,
        this.style = HFTextStyle.normal,
        this.maxLines = null;

  const HFText.body2Light(this.data)
      : this.color = HFColor.scorpion,
        this.textAlign = TextAlign.left,
        this.weight = HFTextWeight.light,
        this.size = HFTextSize.xSmall,
        this.style = HFTextStyle.normal,
        this.maxLines = null;

  const HFText.body2(this.data)
      : this.color = HFColor.scorpion,
        this.textAlign = TextAlign.left,
        this.weight = HFTextWeight.normal,
        this.size = HFTextSize.xSmall,
        this.style = HFTextStyle.normal,
        this.maxLines = null;

  @override
  Widget build(BuildContext context) {
    return Text(this.data,
        textAlign: this.textAlign,
        maxLines: this.maxLines,
        overflow: this.maxLines != null
            ? TextOverflow.ellipsis
            : TextOverflow.visible,
        style: TextStyle(
            color: this.color,
            fontWeight: _getWeight(this.weight),
            fontSize: _getSize(this.size),
            fontStyle: _getStyle(this.style)));
  }

  FontWeight _getWeight(HFTextWeight weight) {
    switch (weight) {
      case HFTextWeight.light:
        return HFFontWeight.light;
      case HFTextWeight.normal:
        return HFFontWeight.normal;
      case HFTextWeight.semiBold:
        return HFFontWeight.semiBold;
      case HFTextWeight.bold:
        return HFFontWeight.bold;
      case HFTextWeight.extraBold:
        return HFFontWeight.extraBold;
    }
  }

  double _getSize(HFTextSize size) {
    switch (size) {
      case HFTextSize.xxSmall:
        return HFFontSize.xxSmall;
      case HFTextSize.xSmall:
        return HFFontSize.xSmall;
      case HFTextSize.small:
        return HFFontSize.small;
      case HFTextSize.medium:
        return HFFontSize.medium;
      case HFTextSize.large:
        return HFFontSize.large;
      case HFTextSize.xLarge:
        return HFFontSize.xLarge;
      case HFTextSize.xxLarge:
        return HFFontSize.xxLarge;
    }
  }

  FontStyle _getStyle(HFTextStyle style) {
    switch (style) {
      case HFTextStyle.normal:
        return FontStyle.normal;
      case HFTextStyle.italic:
        return FontStyle.italic;
    }
  }
}
