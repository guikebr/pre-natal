import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pre_natal/core/either/src/either.dart';
import 'package:pre_natal/core/errors/failure.dart';

class CacheStorage {
  GetStorage localStorage = GetStorage();

  bool hasData({required String key}) {
    return localStorage.hasData(key);
  }

  Future<void> remove({required String key}) async {
    await localStorage.remove(key);
  }

  @optionalTypeArgs
  Either<Failure, String> read({required String key}) {
    try {
      final String result = localStorage.read<String>(key) ?? '';
      return Right<Failure, String>(result);
    } on Exception catch (e) {
      return Left<Failure, String>(CachedFailure(message: 'Erro: $e'));
    }
  }

  Future<Either<Failure, void>> write({
    required String key,
    required String value,
  }) async {
    try {
      if (hasData(key: key)) {
        await localStorage.write(key, value);
      } else {
        await localStorage.writeIfNull(key, value);
      }
      return const Right<Failure, void>(null);
    } on Exception catch (e) {
      return Left<Failure, void>(CachedFailure(message: 'Erro: $e'));
    }
  }

  Future<void> erase() async {
    await localStorage.erase();
  }
}
