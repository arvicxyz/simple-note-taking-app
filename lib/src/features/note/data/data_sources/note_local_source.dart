import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/_errors.dart';
import '../models/_models.dart';

const noteCacheListKey = 'NOTE_CACHE_LIST_KEY';
const noteCacheKey = 'NOTE_CACHE_KEY';

@lazySingleton
abstract class NoteLocalSource {
  @factoryMethod
  const factory NoteLocalSource({required SharedPreferences sharedPreferences}) =
      _NoteLocalSourceImpl;

  Future<bool> setCacheList(List<NoteModel>? modelList);

  Future<List<NoteModel>?> getCacheList();

  Future<bool> removeCacheList();

  Future<bool> setCache(NoteModel? model);

  Future<NoteModel?> getCache();

  Future<bool> removeCache();

  Future<bool> addToCacheList(NoteModel model);

  Future<bool> updateToCacheList(NoteModel model);

  Future<bool> deleteFromCacheList(int id);
}

class _NoteLocalSourceImpl implements NoteLocalSource {
  final SharedPreferences sharedPreferences;

  const _NoteLocalSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> setCacheList(List<NoteModel>? modelList) async {
    if (modelList != null) {
      final stringList = List<String>.empty(growable: true);
      for (int i = 0; i < modelList.length; i++) {
        final model = modelList[i];
        stringList.add(jsonEncode(model.toJson()));
      }
      return await sharedPreferences.setStringList(
        noteCacheListKey,
        stringList,
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<NoteModel>?> getCacheList() {
    try {
      final jsonStringList = sharedPreferences.getStringList(noteCacheListKey);
      if (jsonStringList != null) {
        final modelList = List<NoteModel>.empty(growable: true);
        for (int i = 0; i < jsonStringList.length; i++) {
          final jsonString = jsonStringList[i];
          final Map<String, dynamic> json = jsonDecode(jsonString);
          modelList.add(NoteModel.fromJson(json));
        }
        return Future.value(modelList);
      } else {
        throw CacheException();
      }
    } on Exception catch (e) {
      throw CacheException(errorMessage: e.toString());
    }
  }

  @override
  Future<bool> removeCacheList() async {
    try {
      return await sharedPreferences.remove(noteCacheListKey);
    } on Exception catch (e) {
      throw CacheException(errorMessage: e.toString());
    }
  }

  @override
  Future<bool> setCache(NoteModel? model) async {
    try {
      if (model != null) {
        return await sharedPreferences.setString(
          noteCacheKey,
          jsonEncode(model.toJson()),
        );
      } else {
        throw CacheException();
      }
    } on Exception catch (e) {
      throw CacheException(errorMessage: e.toString());
    }
  }

  @override
  Future<NoteModel> getCache() async {
    try {
      final jsonString = sharedPreferences.getString(noteCacheKey);
      if (jsonString != null) {
        final Map<String, dynamic> json = jsonDecode(jsonString);
        return Future.value(NoteModel.fromJson(json));
      } else {
        throw CacheException();
      }
    } on Exception catch (e) {
      throw CacheException(errorMessage: e.toString());
    }
  }

  @override
  Future<bool> removeCache() async {
    try {
      return await sharedPreferences.remove(noteCacheKey);
    } on Exception catch (e) {
      throw CacheException(errorMessage: e.toString());
    }
  }

  @override
  Future<bool> addToCacheList(NoteModel model) async {
    final modelList = await getCacheList();
    try {
      if (modelList != null) {
        modelList.add(model);
        return await setCacheList(modelList);
      } else {
        throw CacheException();
      }
    } on Exception catch (e) {
      throw CacheException(errorMessage: e.toString());
    }
  }

  @override
  Future<bool> updateToCacheList(NoteModel model) async {
    final modelList = await getCacheList();
    try {
      if (modelList != null) {
        final indexToUpdate = modelList.indexWhere((element) => element.id == model.id);
        modelList[indexToUpdate] = model;
        return await setCacheList(modelList);
      } else {
        throw CacheException();
      }
    } on Exception catch (e) {
      throw CacheException(errorMessage: e.toString());
    }
  }

  @override
  Future<bool> deleteFromCacheList(int id) async {
    final modelList = await getCacheList();
    try {
      if (modelList != null) {
        modelList.removeWhere((element) => element.id == id);
        return await setCacheList(modelList);
      } else {
        throw CacheException();
      }
    } on Exception catch (e) {
      throw CacheException(errorMessage: e.toString());
    }
  }
}
