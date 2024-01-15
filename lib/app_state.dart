import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _darkmode = prefs.getBool('ff_darkmode') ?? _darkmode;
    });
    _safeInit(() {
      _uName = prefs.getString('ff_uName') ?? _uName;
    });
    _safeInit(() {
      _uEmail = prefs.getString('ff_uEmail') ?? _uEmail;
    });
    _safeInit(() {
      _uPhone = prefs.getString('ff_uPhone') ?? _uPhone;
    });
    _safeInit(() {
      _uWhatsapp = prefs.getString('ff_uWhatsapp') ?? _uWhatsapp;
    });
    _safeInit(() {
      _uTitle = prefs.getString('ff_uTitle') ?? _uTitle;
    });
    _safeInit(() {
      _uPhoto = prefs.getString('ff_uPhoto') ?? _uPhoto;
    });
    _safeInit(() {
      _uSlug = prefs.getString('ff_uSlug') ?? _uSlug;
    });
    _safeInit(() {
      _uId = prefs.getString('ff_uId') ?? _uId;
    });
    _safeInit(() {
      _uQr = prefs.getString('ff_uQr') ?? _uQr;
    });
    _safeInit(() {
      _uCompany = prefs.getString('ff_uCompany') ?? _uCompany;
    });
    _safeInit(() {
      _uContactFile = prefs.getString('ff_uContactFile') ?? _uContactFile;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _darkmode = false;
  bool get darkmode => _darkmode;
  set darkmode(bool value) {
    _darkmode = value;
    prefs.setBool('ff_darkmode', value);
  }

  String _urlShare = 'https://vcard.solarion.id';
  String get urlShare => _urlShare;
  set urlShare(String value) {
    _urlShare = value;
  }

  String _uName = '';
  String get uName => _uName;
  set uName(String value) {
    _uName = value;
    prefs.setString('ff_uName', value);
  }

  String _uEmail = '';
  String get uEmail => _uEmail;
  set uEmail(String value) {
    _uEmail = value;
    prefs.setString('ff_uEmail', value);
  }

  String _uPhone = '';
  String get uPhone => _uPhone;
  set uPhone(String value) {
    _uPhone = value;
    prefs.setString('ff_uPhone', value);
  }

  String _uWhatsapp = '';
  String get uWhatsapp => _uWhatsapp;
  set uWhatsapp(String value) {
    _uWhatsapp = value;
    prefs.setString('ff_uWhatsapp', value);
  }

  String _uTitle = '';
  String get uTitle => _uTitle;
  set uTitle(String value) {
    _uTitle = value;
    prefs.setString('ff_uTitle', value);
  }

  String _uPhoto = '';
  String get uPhoto => _uPhoto;
  set uPhoto(String value) {
    _uPhoto = value;
    prefs.setString('ff_uPhoto', value);
  }

  String _uSlug = '';
  String get uSlug => _uSlug;
  set uSlug(String value) {
    _uSlug = value;
    prefs.setString('ff_uSlug', value);
  }

  String _uId = '';
  String get uId => _uId;
  set uId(String value) {
    _uId = value;
    prefs.setString('ff_uId', value);
  }

  String _uQr = '';
  String get uQr => _uQr;
  set uQr(String value) {
    _uQr = value;
    prefs.setString('ff_uQr', value);
  }

  String _uCompany = '';
  String get uCompany => _uCompany;
  set uCompany(String value) {
    _uCompany = value;
    prefs.setString('ff_uCompany', value);
  }

  String _baseUrl = 'https://vcard.solarion.id';
  String get baseUrl => _baseUrl;
  set baseUrl(String value) {
    _baseUrl = value;
  }

  String _uContactFile = '';
  String get uContactFile => _uContactFile;
  set uContactFile(String value) {
    _uContactFile = value;
    prefs.setString('ff_uContactFile', value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
