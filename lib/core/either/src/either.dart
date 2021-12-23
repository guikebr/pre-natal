typedef Lazy<T> = T Function();

/// Represents a value of one of two possible types.
/// Instances of [Either] are either an instance of [Left] or [Right].
///
/// [Left] is used for "failure".
/// [Right] is used for "success".
abstract class Either<L, R> {
  const Either();

  /// Represents the left side of [Either] class which
  /// by convention is a "Failure".
  bool get isLeft => this is Left<L, R>;

  /// Represents the right side of [Either] class which
  /// by convention is a "Success"
  bool get isRight => this is Right<L, R>;

  /// Get [Left] value, may throw an exception when the value is [Right]
  L get left => fold<L>(
        (L value) => value,
        (R right) => throw Exception(
          'Illegal use. You should check isLeft() before calling',
        ),
      );

  /// Get [Right] value, may throw an exception when the value is [Left]
  R get right => fold<R>(
        (L left) => throw Exception(
          'Illegal use. You should check isRight() before calling',
        ),
        (R value) => value,
      );

  /// Transform values of [Left] and [Right]
  Either<TL, TR> either<TL, TR>(
    TL Function(L left) fnL,
    TR Function(R right) fnR,
  );

  /// Transform value of [Right] when transformation may
  /// be finished with an error
  Either<L, TR> then<TR>(Either<L, TR> Function(R right) fnR);

  /// Transform value of [Right] when transformation may
  /// be finished with an error
  Future<Either<L, TR>> thenAsync<TR>(
    Future<Either<L, TR>> Function(R right) fnR,
  );

  /// Transform value of [Right]
  Either<L, TR> map<TR>(TR Function(R right) fnR);

  /// Transform value of [Left]
  Either<TL, R> mapLeft<TL>(TL Function(L left) fnL);

  /// Transform value of [Right]
  Future<Either<L, TR>> mapAsync<TR>(Future<TR> Function(R right) fnR);

  /// Transform value of [Left]
  Future<Either<TL, R>> mapLeftAsync<TL>(Future<TL> Function(L left) fnL);

  /// Fold [Left] and [Right] into the value of one type
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR);

  /// Swap [Left] and [Right]
  Either<R, L> swap() => fold(
        (L left) => Right<R, L>(left),
        (R right) => Left<R, L>(right),
      );

  /// Constructs a new [Either] from a function that might throw
  static Either<L, R> tryCatch<L, R, Err extends Object>(
    L Function(Err err) onError,
    R Function() fnR,
  ) {
    try {
      return Right<L, R>(fnR());
    } on Err catch (e) {
      return Left<L, R>(onError(e));
    }
  }

  /// If the condition is satify then
  /// return [rightValue] in [Right]
  /// else [leftValue] in [Left]
  static Either<L, R> cond<L, R>(bool test, L leftValue, R rightValue) =>
      test ? Right<L, R>(rightValue) : Left<L, R>(leftValue);

  /// If the condition is satify then
  /// return [rightValue] in [Right]
  /// else [leftValue] in [Left]
  static Either<L, R> condLazy<L, R>(
    bool test,
    Lazy<L> leftValue,
    Lazy<R> rightValue,
  ) =>
      test ? Right<L, R>(rightValue()) : Left<L, R>(leftValue());
}

/// Used for "failure"
class Left<L, R> extends Either<L, R> {
  const Left(this.value);

  final L value;

  @override
  Either<TL, TR> either<TL, TR>(
    TL Function(L left) fnL,
    TR Function(R right) fnR,
  ) =>
      Left<TL, TR>(fnL(value));

  @override
  Either<L, TR> then<TR>(Either<L, TR> Function(R right) fnR) {
    return Left<L, TR>(value);
  }

  @override
  Future<Either<L, TR>> thenAsync<TR>(
    Future<Either<L, TR>> Function(R right) fnR,
  ) =>
      Future<Either<L, TR>>.value(Left<L, TR>(value));

  @override
  Either<L, TR> map<TR>(TR Function(R right) fnR) => Left<L, TR>(value);

  @override
  Either<TL, R> mapLeft<TL>(TL Function(L left) fnL) => Left<TL, R>(fnL(value));

  @override
  Future<Either<L, TR>> mapAsync<TR>(Future<TR> Function(R right) fnR) =>
      Future<Either<L, TR>>.value(Left<L, TR>(value));

  @override
  Future<Either<TL, R>> mapLeftAsync<TL>(Future<TL> Function(L left) fnL) =>
      fnL(value).then((TL value) => Left<TL, R>(value));

  @override
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR) => fnL(value);
}

/// Used for "success"
class Right<L, R> extends Either<L, R> {
  const Right(this.value);

  final R value;

  @override
  Either<TL, TR> either<TL, TR>(
    TL Function(L left) fnL,
    TR Function(R right) fnR,
  ) =>
      Right<TL, TR>(fnR(value));

  @override
  Either<L, TR> then<TR>(Either<L, TR> Function(R right) fnR) => fnR(value);

  @override
  Future<Either<L, TR>> thenAsync<TR>(
    Future<Either<L, TR>> Function(R right) fnR,
  ) =>
      fnR(value);

  @override
  Either<L, TR> map<TR>(TR Function(R right) fnR) => Right<L, TR>(fnR(value));

  @override
  Either<TL, R> mapLeft<TL>(TL Function(L left) fnL) => Right<TL, R>(value);

  @override
  Future<Either<L, TR>> mapAsync<TR>(Future<TR> Function(R right) fnR) =>
      fnR(value).then((TR value) => Right<L, TR>(value));

  @override
  Future<Either<TL, R>> mapLeftAsync<TL>(Future<TL> Function(L left) fnL) =>
      Future<Either<TL, R>>.value(Right<TL, R>(value));

  @override
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR) => fnR(value);
}
