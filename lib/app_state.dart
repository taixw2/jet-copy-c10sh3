import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _ROLE = await secureStorage.getString('ff_ROLE') ?? _ROLE;
    });
    await _safeInitAsync(() async {
      _ROLETYPE = (await secureStorage.getStringList('ff_ROLETYPE'))?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _ROLETYPE;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _ROLE = 'ADMIN';
  String get ROLE => _ROLE;
  set ROLE(String value) {
    _ROLE = value;
    secureStorage.setString('ff_ROLE', value);
  }

  void deleteROLE() {
    secureStorage.delete(key: 'ff_ROLE');
  }

  List<String> _USERCATEGORY = [
    'Admin',
    'Client',
    'Manager',
    'Agent',
    'Dispatcher',
    'Accountant'
  ];
  List<String> get USERCATEGORY => _USERCATEGORY;
  set USERCATEGORY(List<String> value) {
    _USERCATEGORY = value;
  }

  void addToUSERCATEGORY(String value) {
    USERCATEGORY.add(value);
  }

  void removeFromUSERCATEGORY(String value) {
    USERCATEGORY.remove(value);
  }

  void removeAtIndexFromUSERCATEGORY(int index) {
    USERCATEGORY.removeAt(index);
  }

  void updateUSERCATEGORYAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    USERCATEGORY[index] = updateFn(_USERCATEGORY[index]);
  }

  void insertAtIndexInUSERCATEGORY(int index, String value) {
    USERCATEGORY.insert(index, value);
  }

  List<String> _LANGUAGE = ['English', 'Russian', 'Chinese'];
  List<String> get LANGUAGE => _LANGUAGE;
  set LANGUAGE(List<String> value) {
    _LANGUAGE = value;
  }

  void addToLANGUAGE(String value) {
    LANGUAGE.add(value);
  }

  void removeFromLANGUAGE(String value) {
    LANGUAGE.remove(value);
  }

  void removeAtIndexFromLANGUAGE(int index) {
    LANGUAGE.removeAt(index);
  }

  void updateLANGUAGEAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    LANGUAGE[index] = updateFn(_LANGUAGE[index]);
  }

  void insertAtIndexInLANGUAGE(int index, String value) {
    LANGUAGE.insert(index, value);
  }

  List<dynamic> _ROLETYPE = [
    jsonDecode('{\"label\":\"管理员\",\"value\":\"admin\"}'),
    jsonDecode('{\"label\":\"仓管\",\"value\":\"warehouseAdmin\"}'),
    jsonDecode('{\"label\":\"客户\",\"value\":\"client\"}'),
    jsonDecode('{\"label\":\"客户经理\",\"value\":\"agent\"}'),
    jsonDecode('{\"label\":\"财务\",\"value\":\"finance\"}'),
    jsonDecode('{\"label\":\"操作员\",\"value\":\"operator\"}'),
    jsonDecode('{\"label\":\"渠道\",\"value\":\"channel\"}'),
    jsonDecode('{\"label\":\"莫办\",\"value\":\"moban\"}')
  ];
  List<dynamic> get ROLETYPE => _ROLETYPE;
  set ROLETYPE(List<dynamic> value) {
    _ROLETYPE = value;
    secureStorage.setStringList(
        'ff_ROLETYPE', value.map((x) => jsonEncode(x)).toList());
  }

  void deleteROLETYPE() {
    secureStorage.delete(key: 'ff_ROLETYPE');
  }

  void addToROLETYPE(dynamic value) {
    ROLETYPE.add(value);
    secureStorage.setStringList(
        'ff_ROLETYPE', _ROLETYPE.map((x) => jsonEncode(x)).toList());
  }

  void removeFromROLETYPE(dynamic value) {
    ROLETYPE.remove(value);
    secureStorage.setStringList(
        'ff_ROLETYPE', _ROLETYPE.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromROLETYPE(int index) {
    ROLETYPE.removeAt(index);
    secureStorage.setStringList(
        'ff_ROLETYPE', _ROLETYPE.map((x) => jsonEncode(x)).toList());
  }

  void updateROLETYPEAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    ROLETYPE[index] = updateFn(_ROLETYPE[index]);
    secureStorage.setStringList(
        'ff_ROLETYPE', _ROLETYPE.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInROLETYPE(int index, dynamic value) {
    ROLETYPE.insert(index, value);
    secureStorage.setStringList(
        'ff_ROLETYPE', _ROLETYPE.map((x) => jsonEncode(x)).toList());
  }
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
