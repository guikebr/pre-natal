abstract class Failure implements Exception {
  Failure();

  String? get message;
}

class ServerFailure extends Failure {
  ServerFailure({this.message});

  @override
  final String? message;
}

class CachedFailure extends Failure {
  CachedFailure({this.message});

  @override
  final String? message;
}

class CameraFailure extends Failure {
  CameraFailure({this.message});

  @override
  final String? message;
}

class ConnectionError extends Failure {
  ConnectionError({this.message});

  @override
  final String? message;
}

class ErrorLoginEmail extends Failure {
  ErrorLoginEmail({this.message});

  @override
  final String? message;
}

class ErrorGetLoggedUser extends Failure {
  ErrorGetLoggedUser({this.message});

  @override
  final String? message;
}

class EmptyUser extends Failure {
  EmptyUser({this.message});

  @override
  final String? message;
}

class ErrorLogout extends Failure {
  ErrorLogout({this.message});

  @override
  final String? message;
}

class ErrorLoginPhone implements Failure {
  ErrorLoginPhone({this.message});

  @override
  final String? message;
}

class NotAutomaticRetrieved implements Failure {
  NotAutomaticRetrieved(this.verificationId, {this.message});

  final String verificationId;
  @override
  final String? message;
}

class TimeOut implements Failure {
  TimeOut({this.message});

  @override
  final String? message;
}

class InternalError implements Failure {
  InternalError({this.message});

  @override
  final String? message;
}

class PermissionDenied extends Failure {
  PermissionDenied({this.message});

  @override
  final String? message;
}
