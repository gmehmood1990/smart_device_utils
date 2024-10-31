# smart_device_utils

A flutter plugin to get device information such as platform version etc for both android & iOS.

## Installation

Add following dependency in pubspec.yaml file:

```bash
smart_device_utils:^0.0.3
```
Install by running:

```bash
$ flutter pub get 
```

## Usage

```
import 'smart_device_utils_platform_interface.dart';

try {
      platformVersion =
          await SmartDeviceUtils().getPlatformVersion() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
```
In android add the following permission:
```
<uses-permission android:name="android.permission.READ_PHONE_STATE"/>
```
Then for API targetting from Marshmallow, need to request runtime permissions.
Although in iOS there is no need to specify permissions.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Developer:
Ghulam Mehmood :smile: :tada:

## License
[MIT]
