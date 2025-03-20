

class FFLibraryValues {
  static FFLibraryValues _instance = FFLibraryValues._internal();

  factory FFLibraryValues() {
    return _instance;
  }

  FFLibraryValues._internal();

  static void reset() {
    _instance = FFLibraryValues._internal();
  }

  String apiEndpoint = 'https://cloud.appwrite.io/v1';
  String projectId = '677bd5cc003630d0aea1';
}
