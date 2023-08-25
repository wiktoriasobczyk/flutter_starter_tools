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
