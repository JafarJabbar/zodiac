class ZodiacClass{
  String _zodiacName;
  String _zodiacDate;
  String _zodiacDetails;
  String _zodiacSmallPicture;
  String _zodiacBigPicture;

  ZodiacClass(this._zodiacName,this._zodiacDate,this._zodiacDetails,this._zodiacSmallPicture,this._zodiacBigPicture);

  String get zodiacBigPicture => _zodiacBigPicture;

  set zodiacBigPicture(String value) {
    _zodiacBigPicture = value;
  }

  String get zodiacSmallPictur => _zodiacSmallPicture;

  set zodiacSmallPictur(String value) {
    _zodiacSmallPicture = value;
  }

  String get zodiacDetails => _zodiacDetails;

  set zodiacDetails(String value) {
    _zodiacDetails = value;
  }

  String get zodiacDate => _zodiacDate;

  set zodiacDate(String value) {
    _zodiacDate = value;
  }

  String get zodiacName => _zodiacName;

  set zodiacName(String value) {
    _zodiacName = value;
  }


}