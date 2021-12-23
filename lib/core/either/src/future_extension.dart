import 'either.dart';

extension FutureEither<L, R> on Future<Either<L, R>> {
  /// Represents the left side of [Either] class which
  /// by convention is a "Failure".
  Future<bool> get isLeft => then((Either<L, R> either) => either.isLeft);

  /// Represents the right side of [Either] class which
  /// by convention is a "Success"
  Future<bool> get isRight => then((Either<L, R> either) => either.isRight);

  /// Transform values of [Left] and [Right]
  Future<Either<TL, TR>> either<TL, TR>(
    TL Function(L left) fnL,
    TR Function(R right) fnR,
  ) =>
      then((Either<L, R> either) => either.either(fnL, fnR));

  /// Transform value of [Right]
  Future<Either<L, TR>> mapRight<TR>(TR Function(R right) fnR) =>
      then((Either<L, R> either) => either.map(fnR));

  /// Transform value of [Left]
  Future<Either<TL, R>> mapLeft<TL>(TL Function(L left) fnL) =>
      then((Either<L, R> either) => either.mapLeft(fnL));

  /// Transform value of [Right] when transformation may
  /// be finished with an error
  Future<Either<L, TR>> thenRightSync<TR>(
    Either<L, TR> Function(R right) fnR,
  ) =>
      then((Either<L, R> either) => either.then(fnR));

  /// Async transform value of [Right]
  Future<Either<L, TR>> mapRightAsync<TR>(Future<TR> Function(R right) fnR) =>
      then((Either<L, R> either) => either.mapAsync(fnR));

  /// Async transform value of [Left]
  Future<Either<TL, R>> mapLeftAsync<TL>(Future<TL> Function(L left) fnL) =>
      then((Either<L, R> either) => either.mapLeftAsync(fnL));

  /// Async transform value of [Right] when transformation may
  /// be finished with an error
  Future<Either<L, TR>> thenRight<TR>(
    Future<Either<L, TR>> Function(R right) fnR,
  ) =>
      then((Either<L, R> either) => either.thenAsync(fnR));

  /// Fold [Left] and [Right] into the value of one type
  Future<T> fold<T>(T Function(L left) fnL, T Function(R right) fnR) => then(
        (Either<L, R> either) => either.fold(fnL, fnR),
      );

  /// Swap [Left] and [Right]
  Future<Either<R, L>> swap() => fold<Either<R, L>>(
        (L left) => Right<R, L>(left),
        (R right) => Left<R, L>(right),
      );
}
