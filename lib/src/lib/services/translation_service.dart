import 'package:translator/translator.dart';

class TranslationService {
  static Future<String> translateText(String text, String from, String to) async {
    final translator = GoogleTranslator();
    final translation = await translator.translate(text, from: from, to: to);
    return translation.text;
  }
}
