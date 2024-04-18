class Api {
  static const url = //''; //prod
  //  'http://10.0.2.2:8080'; //android emulator
  'http://127.0.0.1:8080'; //ios emulator
  //'http://192.168.1.240:8080'; //real device dev

  static Map<String, String> headers(
      {String? token, bool isMultiPart = false}) {
    final contentType =
        isMultiPart ? 'multipart/form-data' : 'application/json';
    return token != null
        ? {
            'Content-Type': contentType,
            'Authorization': "Bearer $token",
          }
        : {
            'Content-Type': contentType,
          };
  }
}
