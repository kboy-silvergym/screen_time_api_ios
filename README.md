# ScreenTime API plugin for Flutter
A Flutter plugin for using iOS ScreenTime API.

# Features
* Show the screen selecting apps to discourage added.
* Show all apps from discouraging added.

![](doc/demo.gif)


# Getting Started

### 1. Add the capability in Xcode

![](doc/1.jpg)

![](doc/2.jpg)

![](doc/3.jpg)

![](doc/4.jpg)

![](doc/5.jpg)

### 2. Request apple to use Family Control API

![](doc/6.jpg)


# Usage

### select apps To discourage

```dart
final _screenTimeApiIosPlugin = ScreenTimeApiIos();
_screenTimeApiIosPlugin.selectAppsToDiscourage();
```

### Encourage all apps (Release restrictions)

```dart
final _screenTimeApiIosPlugin = ScreenTimeApiIos();
_screenTimeApiIosPlugin.encourageAll();
```

# Contributing to this plugin
This plugin's features are not enough. Please contribute to this plugin! 🙏