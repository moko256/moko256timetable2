import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:moko256timetable2/model_main_vo.dart';
import 'package:moko256timetable2/weekdays.dart';
import 'package:path_provider/path_provider.dart';

import 'model_main_repo.dart';

part 'model_main_repo_impl.g.dart';

class ModelMainRepoImpl extends ModelMainRepo {
  var initializeFuture = initialize();

  static Future<void> initialize() async {
    Hive.init((await getApplicationSupportDirectory()).path);
    Hive.registerAdapter(HiveTermInfoAdapter());
    Hive.registerAdapter(HiveClassInfoAdapter());
  }

  Future<Box<int>> properties() async {
    await initializeFuture;
    return await Hive.openBox<int>("properties");
  }

  Future<Box<_HiveTermInfo>> terms() async {
    await initializeFuture;
    return await Hive.openBox<_HiveTermInfo>("terms");
  }

  Future<Box<_HiveClassInfo>> classes(ModelVoTermKey key) async {
    await initializeFuture;
    return await Hive.openBox<_HiveClassInfo>(
        "classes&${key.id.toRadixString(16)}");
  }

  @override
  Future<void> addOrUpdateClass(ModelVoTermKey termKey,
      ModelVoClassKey classKey, ModelVoClassInfo classValue) async {
    var classesBox = await classes(termKey);
    await classesBox.put(_HiveClassKey.from(classKey).toString(),
        _HiveClassInfo.from(classValue));
  }

  @override
  Future<void> addOrUpdateClasses(
      ModelVoTermKey key, ModelVoClasses classValues) async {
    var classesBox = await classes(key);

    await classesBox.putAll({
      for (var classValue in classValues.classes.entries)
        _HiveClassKey.from(classValue.key).toString():
            _HiveClassInfo.from(classValue.value)
    });
  }

  @override
  Future<ModelVoTermKey> addTerm(ModelVoTermInfo termInfo) async {
    var termsBox = await terms();
    var maxTerms = termsBox.keys.map((e) => (e as int));
    var newKey = maxTerms.isNotEmpty ? 1 + maxTerms.reduce(max) : 0;
    await termsBox.put(newKey, _HiveTermInfo.from(termInfo));
    return ModelVoTermKey(newKey);
  }

  @override
  Future<ModelVoTerms> getAllTerms() async {
    var termsBox = await terms();
    return ModelVoTerms(
      termsBox
          .toMap()
          .map((key, value) => MapEntry(ModelVoTermKey(key), value.to())),
    );
  }

  @override
  Future<ModelVoClasses?> getClasses(ModelVoTermKey termKey) async {
    var classesBox = await classes(termKey);
    return ModelVoClasses({
      for (var entry in classesBox.toMap().entries)
        _HiveClassKey.fromString(entry.key).to(): entry.value.to(),
    });
  }

  @override
  Future<ModelVoTermKey?> getCurrentTerm() async {
    var propertiesBox = await properties();
    var id = propertiesBox.get("currentTerm");
    return (id != null) ? ModelVoTermKey(id) : null;
  }

  @override
  Future<ModelVoTermInfo?> getTerm(ModelVoTermKey termKey) async {
    var termsBox = await terms();
    return termsBox.get(termKey.id)?.to();
  }

  @override
  Future<void> removeClass(
      ModelVoTermKey termKey, ModelVoClassKey classKey) async {
    var classesBox = await classes(termKey);
    await classesBox.delete(_HiveClassKey.from(classKey).toString());
  }

  @override
  Future<void> removeTerm(ModelVoTermKey termKey) async {
    var termsBox = await terms();

    var classesBox = await classes(termKey);
    await classesBox.deleteFromDisk();
    await classesBox.close();

    await termsBox.delete(termKey.id);
  }

  @override
  Future<void> setCurrentTerm(ModelVoTermKey termKey) async {
    var propertiesBox = await properties();
    await propertiesBox.put("currentTerm", termKey.id);
  }

  @override
  Future<void> updateTerm(
      ModelVoTermKey termKey, ModelVoTermInfo termInfo) async {
    var termsBox = await terms();
    await termsBox.put(termKey.id, _HiveTermInfo.from(termInfo));
  }
}

@HiveType(typeId: 0)
class _HiveTermInfo extends HiveObject {
  _HiveTermInfo(this.name, this.weekDays, this.maxPeriod);

  @HiveField(0)
  String name;

  @HiveField(1)
  List<int> weekDays;

  @HiveField(2)
  int maxPeriod;

  static _HiveTermInfo from(ModelVoTermInfo termInfo) {
    return _HiveTermInfo(termInfo.name,
        termInfo.weekDays.map((e) => e.index).toList(), termInfo.maxPeriod);
  }

  ModelVoTermInfo to() {
    return ModelVoTermInfo(
        name, weekDays.map((e) => WeekDay.values[e]).toList(), maxPeriod);
  }
}

@HiveType(typeId: 1)
class _HiveClassInfo extends HiveObject {
  _HiveClassInfo(this.name, this.room);

  @HiveField(0)
  String name;

  @HiveField(1)
  String room;

  static _HiveClassInfo from(ModelVoClassInfo classValue) {
    return _HiveClassInfo(classValue.name, classValue.room);
  }

  ModelVoClassInfo to() {
    return ModelVoClassInfo(name, room);
  }
}

@immutable
class _HiveClassKey {
  const _HiveClassKey(this.weekDay, this.period);

  final int weekDay;
  final int period;

  static _HiveClassKey from(ModelVoClassKey classKey) {
    return _HiveClassKey(classKey.weekDay.index, classKey.period);
  }

  static _HiveClassKey fromString(String from) {
    var params = from.split("&").map((e) => int.parse(e, radix: 16)).toList();
    return _HiveClassKey(params[0], params[1]);
  }

  @override
  String toString() {
    return [weekDay, period]
        .map((e) => e.toRadixString(16).toLowerCase())
        .join("&");
  }

  ModelVoClassKey to() {
    return ModelVoClassKey(WeekDay.values[weekDay], period);
  }
}
