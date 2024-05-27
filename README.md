# Text Recognition and Translation App

Este é um aplicativo Flutter que utiliza reconhecimento de texto e tradução para capturar texto a partir de imagens, reconhecer o texto e traduzi-lo para outro idioma. O aplicativo usa a câmera do dispositivo para tirar fotos e processa as imagens para reconhecer o texto presente nelas. Em seguida, o texto reconhecido é traduzido para o idioma desejado.

## Funcionalidades

- Captura de imagem usando a câmera do dispositivo.
- Reconhecimento de texto em imagens utilizando o `google_mlkit_text_recognition`.
- Tradução do texto reconhecido para outro idioma usando o pacote `translator`.
- Interface de usuário simples e intuitiva.

## Pacotes Utilizados

- `flutter`: SDK principal para desenvolvimento do aplicativo.
- `image_picker`: Para capturar imagens usando a câmera do dispositivo.
- `google_mlkit_text_recognition`: Para reconhecimento de texto em imagens utilizando modelos de machine learning.
- `translator`: Para tradução do texto reconhecido.

## Estrutura do Projeto

- lib/
- |-- main.dart 
- |-- screens/
- | |-- home_screen.dart
- |-- widgets/
- | |-- image_display.dart
- |-- services/
- | |-- image_picker_service.dart
- | |-- text_recognition_service.dart
- | |-- translation_service.dart


### Arquivos e Pastas

- **`main.dart`**: O ponto de entrada do aplicativo. Configura o tema e a tela inicial.
- **`screens/home_screen.dart`**: Contém a lógica e a interface da tela principal, incluindo a captura de imagem, reconhecimento de texto e tradução.
- **`widgets/image_display.dart`**: Widget personalizado para exibir a imagem capturada.
- **`services/image_picker_service.dart`**: Serviço para capturar imagens usando a câmera.
- **`services/text_recognition_service.dart`**: Serviço para reconhecer texto em imagens utilizando o Google ML Kit.
- **`services/translation_service.dart`**: Serviço para traduzir o texto reconhecido para outro idioma.

## Como Executar

### Pré-requisitos

- Flutter instalado na sua máquina. Siga as instruções em [flutter.dev](https://flutter.dev/docs/get-started/install) para instalar o Flutter.
- Emulador ou dispositivo físico para testar o aplicativo.

### Passos para Executar

1. **Clone o repositório**:
    ```sh
    git clone https://github.com/seu-usuario/text_recognition_translator.git
    cd text_recognition_translator
    ```

2. **Instale as dependências**:
    ```sh
    flutter pub get
    ```

3. **Execute o aplicativo**:
    ```sh
    flutter run
    ```

## Exemplo de Uso

1. Abra o aplicativo.
2. Toque no botão de câmera para capturar uma imagem.
3. O texto na imagem será reconhecido e exibido.
4. O texto reconhecido será automaticamente traduzido e exibido abaixo do texto original.
5. Use o botão "Rebuild" no canto superior direito para redefinir o aplicativo e capturar uma nova imagem.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
