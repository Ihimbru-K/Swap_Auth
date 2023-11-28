# Expat Swaps

Expat Swaps is a Flutter mobile app that allows users to input and submit personal information through a form, ensuring form validation. The app supports Google authentication for user login and signup. The submitted data is stored in a Firebase Firestore database and can be viewed by the user.

## Features

- Google authentication for user login and signup.
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
2. Run `flutter pub get` in the project directory to fetch the dependencies.

3. Navigate to the project directory:
  ```bash
  cd Swap_Auth


4. Set up your Firebase project and configure the necessary files (`google-services.json` for Android and `GoogleService-Info.plist` for iOS) as described in the authentication and Firestore setup section. Configuration:
   - Set up Firebase Authentication and enable Google Sign-In as an authentication method.
   - Set up Firebase Firestore and create a collection to store the submitted form data.
   - Update the necessary configuration files in the Flutter project to connect to Firebase. Refer to the authentication and database setup documentation for more details.

5. Run the app locally using `flutter run`.

## Dependencies

- Flutter: [Flutter SDK](https://flutter.dev)
- Firebase Core: ^1.10.0
- Firebase Auth: ^3.3.6
- Cloud Firestore: ^3.1.7

## Contributions

Contributions are welcome! If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

### Installation

1. Clone the repository:

```bash
git clone https://github.com/Ihimbru-K/Swap_Auth.git
