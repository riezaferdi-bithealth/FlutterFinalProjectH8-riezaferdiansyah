enum Country {
  india,
  usa,
  mexico,
  uae,
  nz,
  israel,
  indonesia,
}

extension CountryExtension on Country {
  String get name {
    switch (this) {
      case Country.india:
        return 'India';
      case Country.usa:
        return 'United States of America';
      case Country.mexico:
        return 'Mexico';
      case Country.uae:
        return 'United Arab Emirates';
      case Country.nz:
        return 'New Zealand';
      case Country.israel:
        return 'Israel';
      case Country.indonesia:
        return 'Indonesia';
      // default:
      //  return 'Tidak Tahu';
    }
  }

  String get countryCode {
    switch (this) {
      case Country.india:
        return 'in';
      case Country.usa:
        return 'usa';
      case Country.mexico:
        return 'mx';
      case Country.uae:
        return 'uae';
      case Country.nz:
        return 'nz';
      case Country.israel:
        return 'isr';
      case Country.indonesia:
        return 'id';
    }
  }
}
