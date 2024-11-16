// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestStruct extends BaseStruct {
  TestStruct({
    int? code,
    String? msg,
    List<String>? rows,
    int? total,
  })  : _code = code,
        _msg = msg,
        _rows = rows,
        _total = total;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;

  void incrementCode(int amount) => code = code + amount;

  bool hasCode() => _code != null;

  // "msg" field.
  String? _msg;
  String get msg => _msg ?? '';
  set msg(String? val) => _msg = val;

  bool hasMsg() => _msg != null;

  // "rows" field.
  List<String>? _rows;
  List<String> get rows => _rows ?? const [];
  set rows(List<String>? val) => _rows = val;

  void updateRows(Function(List<String>) updateFn) {
    updateFn(_rows ??= []);
  }

  bool hasRows() => _rows != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  static TestStruct fromMap(Map<String, dynamic> data) => TestStruct(
        code: castToType<int>(data['code']),
        msg: data['msg'] as String?,
        rows: getDataList(data['rows']),
        total: castToType<int>(data['total']),
      );

  static TestStruct? maybeFromMap(dynamic data) =>
      data is Map ? TestStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'code': _code,
        'msg': _msg,
        'rows': _rows,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
        'msg': serializeParam(
          _msg,
          ParamType.String,
        ),
        'rows': serializeParam(
          _rows,
          ParamType.String,
          isList: true,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
      }.withoutNulls;

  static TestStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestStruct(
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
        msg: deserializeParam(
          data['msg'],
          ParamType.String,
          false,
        ),
        rows: deserializeParam<String>(
          data['rows'],
          ParamType.String,
          true,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TestStruct &&
        code == other.code &&
        msg == other.msg &&
        listEquality.equals(rows, other.rows) &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([code, msg, rows, total]);
}

TestStruct createTestStruct({
  int? code,
  String? msg,
  int? total,
}) =>
    TestStruct(
      code: code,
      msg: msg,
      total: total,
    );
