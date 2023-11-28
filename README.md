# Expat Swaps

Expat Swaps is a Flutter mobile app that allows users to input and submit personal information through a form, ensuring form validation. The app supports Google authentication for user login and signup. The submitted data is stored in a Firebase Firestore database and can be viewed by the user.

## Features

- Google authentication for user login.
- Input and submission of personal information through a form.
- Form validation to ensure data accuracy.
- Data storage in a Firebase Firestore database.
- Display of submitted data for the user.
- Logout option.

## Getting Started

To run the app locally, follow these steps:

### Prerequisites

- Flutter SDK: Make sure you have Flutter SDK installed on your machine. You can download it from the official Flutter website: [Flutter SDK](https://flutter.dev).
- Android Studio or Xcode for Android and iOS development.
- Firebase project set up with Firestore enabled.

### Setup and Configuration

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/Ihimbru-K/Swap_Auth.git

3. Navigate to the project directory:

  `cd Swap_Auth`
3. Fetch dependencies: run `flutter pub get` in the project directory.
4. Set up Firebase Authentication and Firestore by following the instructions in the documentation.
5. Launch the app on a connected device or emulator: `flutter run`

Note: To properly configure the app, ensure you have the necessary configuration files (`google-services.json` for Android and `GoogleService-Info.plist` for iOS) in the respective project directories.

## Dependencies being added

- Flutter: [Flutter SDK](https://flutter.dev)
- Firebase Core: ^2.23.0
- Firebase Auth: ^4.10.1
- Google Sign In : ^6.1.5
- Cloud Firestore: ^4.3.2
- Google Fonts: ^6.1.0
- Iconly: ^1.0.1
- Intl: ^0.17.0

## Contributions

Contributions are welcome! If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.
