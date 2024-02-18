import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/app_logger.dart';
import '../../../../core/errors/_errors.dart';
import '../../../../core/network/_network.dart';
import '../../domain/entities/_entities.dart';
import '../../domain/repositories/_repositories.dart';
import '../data_sources/_data_sources.dart';
import '../models/_models.dart';

@Injectable(as: NoteRepository)
abstract class NoteRepositoryImpl implements NoteRepository {
  @factoryMethod
  const factory NoteRepositoryImpl({
    required NoteLocalSource localSource,
    required NoteRemoteSource remoteSource,
    required NetworkInfo networkInfo,
  }) = _NoteRepositoryImpl;
}

class _NoteRepositoryImpl implements NoteRepositoryImpl {
  final NoteLocalSource localSource;
  final NoteRemoteSource remoteSource;
  final NetworkInfo networkInfo;

  // TODO: ONLY LOCAL SOURCE USED - Remove when API is fixed, due to mismatch on API data types
  final bool _enableApi = false;

  const _NoteRepositoryImpl({
    required this.localSource,
    required this.remoteSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<NoteEntity>>> getAllNote() async {
    if (await networkInfo.isConnected && _enableApi) {
      const errorPath = 'remoteSource.getNoteApiService.getAllNote';
      try {
        final remote = await remoteSource.getNoteApiService.getAllNote();
        if (remote == null) {
          const errorMessage = 'Failed to get data from remote source in $errorPath';
          return Left(_getServerFailure(errorMessage));
        }
        // Success
        localSource.setCacheList(remote.notes);
        final list = remote.notes.map((e) => NoteEntity.fromModel(e)).toList();
        return Right(list);
      } on ServerException {
        const errorMessage = 'A server exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on DioException {
        const errorMessage = 'A Dio exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getServerFailure(errorMessage));
      }
    } else {
      const errorPath = 'localSource.getCacheList';
      try {
        final local = await localSource.getCacheList();
        if (local == null) {
          const errorMessage = 'Failed to get cache from local source in $errorPath';
          return Left(_getCacheFailure(errorMessage));
        }
        // Success
        final list = local.map((e) => NoteEntity.fromModel(e)).toList();
        return Right(list);
      } on CacheException {
        const errorMessage = 'A cache exception has occured: $errorPath';
        return Left(_getCacheFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getCacheFailure(errorMessage));
      }
    }
  }

  @override
  Future<Either<Failure, NoteEntity>> getNote({required String id}) async {
    if (await networkInfo.isConnected && _enableApi) {
      const errorPath = 'remoteSource.getNoteApiService.getNote';
      try {
        final remote = await remoteSource.getNoteApiService.getNote(id: 1);
        if (remote == null) {
          const errorMessage = 'Failed to get data from remote source in $errorPath';
          return Left(_getServerFailure(errorMessage));
        }
        // Success
        return Right(NoteEntity.fromModel(remote));
      } on ServerException {
        const errorMessage = 'A server exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on DioException {
        const errorMessage = 'A Dio exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getServerFailure(errorMessage));
      }
    } else {
      const errorPath = 'localSource.getCache';
      try {
        final local = await localSource.getFromCacheList(id);
        if (local == null) {
          const errorMessage = 'Failed to get cache from local source in $errorPath';
          return Left(_getCacheFailure(errorMessage));
        }
        // Success
        return Right(NoteEntity.fromModel(local));
      } on CacheException {
        const errorMessage = 'A cache exception has occured: $errorPath';
        return Left(_getCacheFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getCacheFailure(errorMessage));
      }
    }
  }

  @override
  Future<Either<Failure, bool>> addNote({required NoteEntity entity}) async {
    if (await networkInfo.isConnected && _enableApi) {
      const errorPath = 'remoteSource.getNoteApiService.addNote';
      try {
        final requestModel = NoteAddRequestModel(
          note: entity.note,
          completed: entity.completed,
          userId: entity.userId,
        );
        final remote = await remoteSource.getNoteApiService.addNote(model: requestModel);
        if (remote == null) {
          const errorMessage = 'Failed to get data from remote source in $errorPath';
          return Left(_getServerFailure(errorMessage));
        }
        // Success
        localSource.addToCacheList(remote);
        return const Right(true);
      } on ServerException {
        const errorMessage = 'A server exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on DioException {
        const errorMessage = 'A Dio exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getServerFailure(errorMessage));
      }
    } else {
      const errorPath = 'localSource.addToCacheList';
      try {
        final isSuccess = await localSource.addToCacheList(NoteModel.fromEntity(entity));
        if (!isSuccess) {
          const errorMessage = 'Failed to get cache from local source in $errorPath';
          return Left(_getCacheFailure(errorMessage));
        }
        // Success
        return const Right(true);
      } on CacheException {
        const errorMessage = 'A cache exception has occured: $errorPath';
        return Left(_getCacheFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getCacheFailure(errorMessage));
      }
    }
  }

  @override
  Future<Either<Failure, bool>> updateNote({required String id, required NoteEntity entity}) async {
    if (await networkInfo.isConnected && _enableApi) {
      const errorPath = 'remoteSource.getNoteApiService.updateNote';
      try {
        final requestModel = NoteUpdateRequestModel(
          note: entity.note,
          completed: entity.completed,
        );
        final remote = await remoteSource.getNoteApiService.updateNote(id: 1, model: requestModel);
        if (remote == null) {
          const errorMessage = 'Failed to get data from remote source in $errorPath';
          return Left(_getServerFailure(errorMessage));
        }
        // Success
        localSource.updateToCacheList(remote);
        return const Right(true);
      } on ServerException {
        const errorMessage = 'A server exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on DioException {
        const errorMessage = 'A Dio exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getServerFailure(errorMessage));
      }
    } else {
      const errorPath = 'localSource.updateToCacheList';
      try {
        final isSuccess = await localSource.updateToCacheList(NoteModel.fromEntity(entity));
        if (!isSuccess) {
          const errorMessage = 'Failed to get cache from local source in $errorPath';
          return Left(_getCacheFailure(errorMessage));
        }
        // Success
        return const Right(true);
      } on CacheException {
        const errorMessage = 'A cache exception has occured: $errorPath';
        return Left(_getCacheFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getCacheFailure(errorMessage));
      }
    }
  }

  @override
  Future<Either<Failure, bool>> deleteNote({required String id}) async {
    if (await networkInfo.isConnected && _enableApi) {
      const errorPath = 'remoteSource.getNoteApiService.deleteNote';
      try {
        final remote = await remoteSource.getNoteApiService.deleteNote(id: 1);
        if (remote == null) {
          const errorMessage = 'Failed to get data from remote source in $errorPath';
          return Left(_getServerFailure(errorMessage));
        }
        // Success
        localSource.deleteFromCacheList(remote.id.toString());
        return const Right(true);
      } on ServerException {
        const errorMessage = 'A server exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on DioException {
        const errorMessage = 'A Dio exception has occured in $errorPath';
        return Left(_getServerFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getServerFailure(errorMessage));
      }
    } else {
      const errorPath = 'localSource.deleteFromCacheList';
      try {
        final isSuccess = await localSource.deleteFromCacheList(id);
        if (!isSuccess) {
          const errorMessage = 'Failed to get cache from local source in $errorPath';
          return Left(_getCacheFailure(errorMessage));
        }
        // Success
        return const Right(true);
      } on CacheException {
        const errorMessage = 'A cache exception has occured: $errorPath';
        return Left(_getCacheFailure(errorMessage));
      } on Exception catch (e) {
        final errorMessage = 'An exception has occured in $errorPath: ${e.toString()}';
        return Left(_getCacheFailure(errorMessage));
      }
    }
  }

  ServerFailure _getServerFailure(String errorMessage) {
    final failure = ServerFailure(errorMessage: errorMessage);
    AppLogger.logError(failure.errorMessage);
    return failure;
  }

  CacheFailure _getCacheFailure(String errorMessage) {
    final failure = CacheFailure(errorMessage: errorMessage);
    AppLogger.logError(failure.errorMessage);
    return failure;
  }
}
