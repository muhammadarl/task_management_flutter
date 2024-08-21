class Urls {
  static const host = 'https://api.example.com';
  static String image(String path) => '$host/attachments/$path';
}
