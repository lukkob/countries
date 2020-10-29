class Country {
  final String name;
  final String confederationIsoCode;
  final String confederationIso3Code;
  final String isoCode;
  final String iso3Code;
  final String phoneCode;
  final String topLevelDomain;
  final String capitalCity;

  Country({
    this.name,
    this.confederationIsoCode,
    this.confederationIso3Code,
    this.isoCode,
    this.iso3Code,
    this.phoneCode,
    this.topLevelDomain,
    this.capitalCity,
  });

  factory Country.fromMap(Map<String, String> map) => Country(
      name: map['name'],
      confederationIsoCode: map['confederationIsoCode'],
      confederationIso3Code: map['confederationIso3Code'],
      isoCode: map['isoCode'],
      iso3Code: map['iso3Code'],
      phoneCode: map['phoneCode'],
      topLevelDomain: map['topLevelDomain'],
      capitalCity: map['capitalCity']);
}
