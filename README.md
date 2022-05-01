# Cycle Lock App

App for the NITT Bluetooth Cycle Lock Project

## Setup
* Fork and Clone the Repo
```
git clone <YOUR_FORK_URL>
```
* Add remote upstream
```
git remote add upstream <MAIN_REPO_URL>
```
* Download dependencies
```
flutter pub get
```
* To run the App by passing the map api key
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
- [Flutter docs](https://flutter.dev/docs)
- [Bloc](https://bloclibrary.dev/)
- [gorouter](https://gorouter.dev/)
