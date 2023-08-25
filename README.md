# flutter_starter_tools

Example project to show some project setup tools posibilities

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## 🛠 FVM Configuration 

**FVM** stands for Flutter Version Management. It's a tool that simplifies the process of switching between different Flutter versions in your projects. Let's get it set up:

### Prerequisites

1. **Install Homebrew**: If you don't have Homebrew installed, you can find the installation steps [here](https://docs.brew.sh/Installation).

### Installation Steps

2. **Install FVM via Homebrew**:
    ```bash
    brew tap leoafarias/fvm
    brew install fvm
    ```

3. **Check Available Flutter Versions**:
    ```bash
    fvm releases
    ```

4. **Install Desired Flutter Version**: You can choose to install the stable version or any specific version:
    ```bash
    fvm install stable
    ```
    or
    ```bash
    fvm install 3.10.6
    ```

5. **Activate Flutter Version for Your Project**: Navigate to your project directory and set the version:
    ```bash
    fvm use stable
    ```
    or
    ```bash
    fvm use 3.10.6
    ```

6. **Update `.gitignore` File**: Ensure that Flutter version-specific files aren't accidentally committed to your version control.

7. **Using Flutter Commands with FVM**: All traditional Flutter commands can be prefixed with `fvm`:
    ```bash
    fvm flutter run
    ```



## 🌍 Flavors Configuration with `flutter_flavorizr`

Setting up different build variants or flavors allows you to manage multiple versions of the app (like development, staging, production) with unique configurations, icons, and even backend settings. The `flutter_flavorizr` package simplifies this process in Flutter. Here's a guide to get you started:

### 1️⃣ Install the Package
Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_flavorizr: ^latest_version
```

### 2️⃣ Define your flavors
In the `pubspec.yaml` file, define the structure for your flavors. Each flavor can have distinct configurations for Android and iOS, MacOS and windows platform, allowing for granular control over aspects such as icons, firebase configurations, and more.

Below is an example configuration for two flavors: dev and prod.
```yaml
flavorizr:
  flavors:
    dev:
      app:
        name: "My App Dev"
      android:
        applicationId: "com.myapp.dev"
        icon: "path_to_dev_icon.png"
        firebase:
          config: "path_to_dev_firebase_config.json"
      ios:
        bundleId: "com.myapp.dev"
        icon: "path_to_dev_icon.png"
        firebase:
          config: "path_to_dev_firebase_config.json"
      macos:
        bundleId: "com.myapp.dev"
        icon: "path_to_dev_icon.png"
        firebase:
          config: "path_to_dev_firebase_config.json"

# Config only different bundle id for prod environment  
prod:
      app:
        name: "My App Prod"
      android:
        applicationId: "com.myapp.prod"
      ios:
        bundleId: "com.myapp.prod"

```

### 3️⃣ Invoke script
Run scirpt `fvm flutter pub run flutter_flavorizr`

