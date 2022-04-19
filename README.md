# Cycle Lock App

App for the NITT Bluetooth Cycle Lock Project

## Requirements
- Java-Version - '12.x'
- Flutter-Version - '2.5.x'
- Dart-Version - '2.12' or above
- Android Studio

## Setup
* Fork and Clone the Repo
```
git clone <YOUR_FORK_URL>
```
* Add remote upstream
```
git remote add upstream <MAIN_REPO_URL>
```
* To get all the dependencies listed in the pubspec
```
flutter pub get
```
* To run the App by passing the map api key as command line argument
```
flutter run --dart-define=map_key=<MAP_KEY>
```

## Adding GitHooks
* Configure git-hooks path
```
git config core.hooksPath .githooks
```
* Set githooks/* as executable
```
chmod ug+x .githooks/* 
```

## Resources
- [Flutter documentation](https://flutter.dev/docs)
- [GetX](https://pub.dev/packages/get)
