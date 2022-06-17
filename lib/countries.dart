library countries;

import 'package:countries/countries_list.dart';
import 'package:countries/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Countries {
  static Country getCountryByIsoCode({required String isoCode}) {
    try {
      return countryList.firstWhere(
        (country) => country.isoCode.toLowerCase() == isoCode.toLowerCase(),
      );
    } catch (error) {
      throw Exception("No country found for isoCode: $isoCode");
    }
  }

  static Image getFlag({
    required String isoCode,
    double? height,
    double? width,
    BoxFit? boxFit,
  }) =>
      Image.asset(
        _getFlagPath(isoCode, 'png'),
        height: height ?? 20.0,
        width: width ?? 30.0,
        fit: boxFit ?? BoxFit.fill,
        package: 'countries',
      );

  static SvgPicture getSvgFlag({
    required String isoCode,
    double? height,
    double? width,
    BoxFit? boxFit,
  }) =>
      SvgPicture.asset(
        _getFlagPath(isoCode, 'svg'),
        height: height ?? 20.0,
        width: width ?? 30.0,
        fit: boxFit ?? BoxFit.fill,
        package: 'countries',
      );

  static String _getFlagPath(String isoCode, String format) {
    if (format == 'svg') {
      return "lib/assets/svg/${isoCode.toLowerCase()}.$format";
    } else {
      return "lib/assets/png100px/${isoCode.toLowerCase()}.$format";
    }
  }
}
