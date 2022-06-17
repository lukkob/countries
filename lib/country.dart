class Country {
  final String name;
  final String isoCode;
  final String iso3Code;
  final String phoneCode;
  final String? phoneNumberMask;

  Country({
    required this.isoCode,
    required this.iso3Code,
    required this.phoneCode,
    required this.name,
    this.phoneNumberMask,
  });
}
