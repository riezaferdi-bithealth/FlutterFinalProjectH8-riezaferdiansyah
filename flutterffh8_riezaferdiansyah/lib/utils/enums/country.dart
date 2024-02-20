enum Country { india, indoensia, nz }

extension CountryExtension on Country {
  String get name {
    switch (this) {
      case Country.india:
        return 'India';
      case Country.indoensia:
        return 'Indonesia';
      case Country.nz:
        return 'New Zealand';
      // default:
      //  return 'Tidak Tahu';
    }
  }

  String get countryCode {
    switch (this) {
      case Country.india:
        return 'in';
      case Country.indoensia:
        return 'id';
      case Country.nz:
        return 'nz';
    }
  }
}
