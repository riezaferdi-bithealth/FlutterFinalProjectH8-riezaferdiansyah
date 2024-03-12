enum Category {
  all,
  general,
  science,
  business,
  technology,
  sports,
  health,
  entertainment,
}

extension CategoryExtension on Category {
  String get name {
    switch (this) {
      case Category.all:
        return 'All';
      case Category.general:
        return 'General';
      case Category.science:
        return 'Science';
      case Category.business:
        return 'Business';
      case Category.technology:
        return 'Technology';
      case Category.sports:
        return 'Sports';
      case Category.health:
        return 'Health';
      case Category.entertainment:
        return 'Entertainment';
      // default:
      //  return 'Tidak Tahu';
    }
  }

  // String get CategoryCode {
  //   switch (this) {
  //     case Category.all:
  //       return 'in';
  //     case Category.all:
  //       return 'in';
  //     case Category.science:
  //       return 'science';
  //     case Category.business:
  //       return 'mx';
  //     case Category.technology:
  //       return 'technology';
  //     case Category.sports:
  //       return 'sports';
  //     case Category.health:
  //       return 'isr';
  //     case Category.entertainment:
  //       return 'id';
  //   }
  // }
}
