class ServerException implements Exception {
  const ServerException(this.message);

  final String message;

  List<Object> get props => <Object>[message];
}

class CacheException implements Exception {
  const CacheException(this.message);

  final String message;

  List<Object> get props => <Object>[message];
}
