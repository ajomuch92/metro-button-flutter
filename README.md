# Metro Buttons

This package includes 2 types of buttons (CommandButton and ShortcutButton) inspired by [Metro UI](https://metroui.org.ua/buttons.html).

![](https://github.com/ajomuch92/metro-button-flutter/blob/master/assets/capture.jpg)

## Instalation
Include `metro_button` in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  metro_button: version
```

## Usage

To use this package, just import it into your file and enjoy it.

```dart
import 'package:metro_button/metro_button.dart';

...

CommandButton(title: Text('Title'), tap: (){},)
ShortcutButton(title: Text('Title'), tap: (){}, Icon(Icons.home))

...

```

