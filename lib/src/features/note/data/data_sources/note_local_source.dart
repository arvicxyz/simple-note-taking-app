import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/errors/_errors.dart';
import '../models/_models.dart';

const noteCacheListKey = 'NOTE_CACHE_LIST_KEY';

@lazySingleton
abstract class NoteLocalSource {
  @factoryMethod
  const factory NoteLocalSource({required SharedPreferences sharedPreferences}) =
      _NoteLocalSourceImpl;

  Future<bool> setCacheList(List<NoteModel>? modelList);

  Future<List<NoteModel>?> getCacheList();

  Future<bool> removeCacheList();

  Future<NoteModel?> getFromCacheList(String id);

  Future<bool> addToCacheList(NoteModel model);

  Future<bool> updateToCacheList(NoteModel model);

  Future<bool> deleteFromCacheList(String id);
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
      var jsonStringList = sharedPreferences.getStringList(noteCacheListKey);
      if (jsonStringList == null) {
        sharedPreferences.setStringList(noteCacheListKey, List.empty());
        jsonStringList = List.empty();
      }
      final modelList = List<NoteModel>.empty(growable: true);
      for (int i = 0; i < jsonStringList.length; i++) {
        final jsonString = jsonStringList[i];
        final Map<String, dynamic> json = jsonDecode(jsonString);
        modelList.add(NoteModel.fromJson(json));
      }
      return Future.value(modelList);
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
  Future<NoteModel> getFromCacheList(String id) async {
    try {
      final cacheList = await getCacheList();
      if (cacheList?.isNotEmpty ?? false) {
        return Future.value(cacheList!.firstWhere((element) => element.id == id));
      } else {
        throw CacheException();
      }
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
  Future<bool> deleteFromCacheList(String id) async {
    final modelList = await getCacheList();
    try {
      if (modelList != null) {
        modelList.removeWhere((element) => element.id.toString() == id);
        return await setCacheList(modelList);
      } else {
        throw CacheException();
      }
    } on Exception catch (e) {
      throw CacheException(errorMessage: e.toString());
    }
  }
}
