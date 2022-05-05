# Cycle Lock App

App for the NITT Bluetooth Cycle Lock Project

## Setup
Download dependencies
```
flutter pub get
```
Install [flutter_gen](https://pub.dev/packages/flutter_gen/install)
```
dart pub global activate flutter_gen
```
Run flutter_gen
```
flutter packages pub run build_runner build
```
To run the App by passing the map api key
```
flutter run --dart-define=map_key=<MAP_KEY>
```

## Add GitHooks
Configure git-hooks path
```
git config core.hooksPath .githooks
```
Set githooks/* as executable
```
chmod ug+x .githooks/* 
```

## Resources
- [Flutter docs](https://flutter.dev/docs)
- [bloc](https://bloclibrary.dev/)
- [gorouter](https://gorouter.dev/)
- [dio](https://pub.dev/packages/dio)
- [flutter_gen](https://pub.dev/packages/flutter_gen)
