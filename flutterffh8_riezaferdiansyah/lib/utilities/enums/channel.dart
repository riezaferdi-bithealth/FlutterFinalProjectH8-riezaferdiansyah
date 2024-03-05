enum Channel {
  bbcNews,
  timesIndia,
  politico,
  washingtonPost,
  reuters,
  cnn,
  nbcNews,
  hills,
  foxNews,
}

extension ChannelExtension on Channel {
  String get name {
    switch (this) {
      case Channel.bbcNews:
        return 'BBC News';
      case Channel.timesIndia:
        return 'Times of India';
      case Channel.politico:
        return 'Politico';
      case Channel.washingtonPost:
        return 'The Washington Post';
      case Channel.reuters:
        return 'Reuters';
      case Channel.cnn:
        return 'CNN';
      case Channel.nbcNews:
        return 'NBC News';
      case Channel.hills:
        return 'The Hills';
      case Channel.foxNews:
        return 'FOX News';
      // default:
      //  return 'Tidak Tahu';
    }
  }

  // String get ChannelCode {
  //   switch (this) {
  //     case Channel.bbcNews:
  //       return 'in';
  //     case Channel.bbcNews:
  //       return 'in';
  //     case Channel.politico:
  //       return 'politico';
  //     case Channel.washingtonPost:
  //       return 'mx';
  //     case Channel.reuters:
  //       return 'reuters';
  //     case Channel.cnn:
  //       return 'cnn';
  //     case Channel.nbcNews:
  //       return 'isr';
  //     case Channel.hills:
  //       return 'id';
  //   }
  // }
}
