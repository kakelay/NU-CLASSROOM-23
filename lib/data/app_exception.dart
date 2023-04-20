// ignore_for_file: prefer_typing_uninitialized_variables

class AppExpetion implements Exception {
  final message;
  final prefix;
  AppExpetion({this.message, this.prefix});
  @override
  String toString() {
    // TODO: implement toString
    return 'AppException{massage:$message,prefix"$prefix"}';
  }
}

class FetchDataException extends AppExpetion {
  FetchDataException(String? message)
      : super(
            message: message,
            prefix: "Error Durng communicate check your intenet");
}

class UnAuthorizedException extends AppExpetion {
  UnAuthorizedException(String? message)
      : super(
            message: message,
            prefix: "You are not authorized with this requst");
}
