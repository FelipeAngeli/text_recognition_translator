import 'dart:io';

import 'package:flutter/material.dart';
import 'package:text_recognition_translator_new/src/lib/services/image_picker_service.dart';
import 'package:text_recognition_translator_new/src/lib/services/text_recognition_service.dart';
import 'package:text_recognition_translator_new/src/lib/services/translation_service.dart';
import 'package:text_recognition_translator_new/src/lib/widgets/image_display.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? _image;
  String _recognizedText = '';
  String _translatedText = '';

  Future<void> _pickImage() async {
    final pickedFile = await ImagePickerService.pickImage();

    if (pickedFile != null) {
      setState(() {
        _image = pickedFile;
        _recognizedText = '';
        _translatedText = '';
      });

      _recognizeText();
    }
  }

  Future<void> _recognizeText() async {
    if (_image == null) return;

    final recognizedText = await TextRecognitionService.recognizeText(_image!);

    setState(() {
      _recognizedText = recognizedText;
    });

    _translateText(_recognizedText);
  }

  Future<void> _translateText(String text) async {
    final translatedText = await TranslationService.translateText(text, 'en', 'pt');

    setState(() {
      _translatedText = translatedText;
    });
  }

  void _rebuildScreen() {
    setState(() {
      _image = null;
      _recognizedText = '';
      _translatedText = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Reconhecimento de Texto'),
            Text('e Tradução'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _rebuildScreen,
            tooltip: 'Rebuild',
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageDisplay(image: _image),
                const SizedBox(height: 16),
                const Text(
                  'Texto Reconhecido:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(_recognizedText),
                const SizedBox(height: 16),
                const Text(
                  'Texto Traduzido:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Text(
                  _translatedText,
                  style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickImage,
        tooltip: 'Tirar Foto',
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
