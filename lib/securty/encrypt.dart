// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:encrypt/encrypt.dart' as encrypt;

class EncryptionDecryption {
  //
  static final key = encrypt.Key.fromLength(32);
  static final iv = encrypt.IV.fromLength(16);
  static final encrypter = encrypt.Encrypter(encrypt.AES(key));
  //
  static encryption(text) {
    final encrypted = encrypter.encrypt(text, iv: iv);
    print('<<< password after Encryption >>> ' + encrypted.base64);
    return encrypted;
  }

  static decryption(text) {
    return encrypter.decrypt(text, iv: iv);
  }
}
