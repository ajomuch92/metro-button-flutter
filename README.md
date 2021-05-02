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

### CommandButton
This widget allow to generate a button with an icon

**Properties**

|  Name | Description   | Required   | Default   |
| ------------ | ------------ | ------------ | ------------ |
| title  | Widget to put as button title | True   |   |
| subtitle  | Widget to put as button subtitle |  False  |   |
| icon  | Widget to put as button icon | False   |   |
| tooltip  | String to use as a help tooltip | False   |   |
| disabled  | Boolean value to disabled button | False   |  False |
| reverse  | Boolean value to indicate when icon is used as leading or trailing | False   |  False |
| width  | Double value to indicate button width | False   |   |
| height  | Double value to indicate button height | False   |   |
| elevation  | Double value to indicate button elevation | False   |  0 |
| radius  | Double value to indicate button corner radius | False   |  5.0 |
| backgroundColor  | Color to indicate button background color | False   |   |
| borderColor  | Color to indicate button border color | False   |   |
| onTap  | Function to handle button on tap | True   |   |
| onLongTap  | Function to handle button on long tap | false   |   |

### ShortcutButton
This widget allow to generate a square button with an icon and badge

**Properties**

|  Name | Description   | Required   | Default   |
| ------------ | ------------ | ------------ | ------------ |
| title  | Widget to put as button title | True   |   |
| badge  | Widget to put button badge |  False  |   |
| icon  | Widget to put as button icon | False   |   |
| tooltip  | String to use as a help tooltip | False   |   |
| disabled  | Boolean value to disabled button | False   |  False |
| size  | Double value to indicate button width and height | False   |   |
| elevation  | Double value to indicate button elevation | False   |  0 |
| radius  | Double value to indicate button corner radius | False   |  5.0 |
| backgroundColor  | Color to indicate button background color | False   |   |
| borderColor  | Color to indicate button border color | False   |   |
| onTap  | Function to handle button on tap | True   |   |
| onLongTap  | Function to handle button on long tap | false   |   |
