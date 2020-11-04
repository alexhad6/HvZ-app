/// File Storage Component
///
/// Team HvZ App
///
/// Members: Santiago Rodriguez, Alex Hadley, Matthew Waddell, Kyra Clark
///
/// Project 3C.1 — Component Design: File Storage
///   Design: https://github.com/alexhad6/HvZ-app/blob/master/Administrative/Phase%203/design_3c_sr.dart
///   Primary author: Santiago
///
/// This is a design document for the File Storage component of the HvZ App.
/// The File Storage component is responsible for uploading and downloading
/// mission files to and from the Firebase cloud storage (https://firebase.google.com/docs/storage).
/// It also ensures that cached values are used when available rather than
/// downloading from file storage each time. The documentation for Flutter's
/// Firebase storage integration is here https://firebase.flutter.dev/docs/storage/usage.
///
/// This component implements a single class called FileStorageService which is
/// called whenever any component needs to upload or download from the file storage.

// importing the cache manager package
import 'package:flutter_cache_manager_firebase/flutter_cache_manager_firebase.dart';

// importing the firebase cloud storage package
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

// importing asynchronous function activity to wait for firebase to respond
import 'dart:async';

/// Class: FileStorageService
///
/// Purpose: contains functions for uploading and downloading files to the file
/// storage. Makes use of cached values when returning a file stream.
class FileStorageService {
  // A file stream object to be returned when a file is downloaded.
  Stream<FileResponse> fileStream;

  // Current game name from database, useful for finding the files in the right place.
  String currentGame = getCurrentGame();

  // Storage instance.
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  // This will use the default constructor which does not need to be explicitly
  // created as it does not take in any arguments

  /// Organizes the file storage for a fresh, new game.
  Future<int> newGame() async {
    // Set raw data to be uploaded to create the new folder.
    // Encode the raw data to utf-8 standard.

    // Create a Firebase storage reference to upload to using the [currentGame]
    // string which should be updated for the new game.

    // Try uploading the data to create the new folder, await it, throw expection
    // if there is a failure.
    return 0; //success
  }

  /// Creates a mission folder in the file storage for a new mission.
  Future<int> newMission(int missionNumber) async {
    // Set raw data to be uploaded to create the new folder.
    // Encode the raw data to utf-8 standard.

    // Create a Firebase storage reference to upload to using a string representation
    // of the [missionNumber] int.

    // Try uploading the data to create the new folder, await it, throw expection
    // if there is a failure.
    return 0; //success
  }

  /// Uploads an image to the file storage and stores the download URL in the database.
  Future<int> uploadImage(int missionNumber, String filePath) async {
    // Create a File object from the file path [filePath].

    // List all of the .jpg images currently in the file storage system.
    // Count them and store the number (plus one) as a variable int imageCount.

    // Create metadata to set the max amount of time that the image may reside in the cache (7 days).

    // Try: create a reference to the image for the database in the form of
    // '/[currentGame]/[string representation of missionNumber]/[string rep of imageCount].jpg'.
    // Upload the file created earlier with its metadata to the storage reference.
    // Throw an exception if there is a failure.

    // Get the download URL of the newly uploaded image. Send it to the database
    // using the addFile function (written in database component).
    return 0; //success
  }

  /// Uploads a text file to the file storage and stores the download URL in the database.
  Future<int> uploadTxt(int missionNumber, String filePath) async {
    // Create a File object from the file path [filePath].

    // List all of the .txt files currently in the file storage system.
    // Count them and store the number (plus one) as a variable int txtCount.

    // Create metadata to set the max amount of time that the text file may reside in the cache (7 days).

    // Try: create a reference to the text file for the database in the form of
    // '/[currentGame]/[string representation of missionNumber]/[string rep of txtCount].txt'.
    // Upload the file created earlier with its metadata to the storage reference.
    // Throw an exception if there is a failure.

    // Get the download URL of the newly uploaded text file. Send it to the database
    // using the addFile function (written in database component).
    return 0; //success
  }

  /// Uploads a video file to the file storage and stores the download URL in the database.
  Future<int> uploadVideo(int missionNumber, String filePath) async {
    // Create a File object from the file path [filePath].

    // List all of the .mp4 files currently in the file storage system.
    // Count them and store the number (plus one) as a variable int vidCount.

    // Create metadata to set the max amount of time that the video may reside in the cache (7 days).

    // Try: create a reference to the video file for the database in the form of
    // '/[currentGame]/[string representation of missionNumber]/[string rep of vidCount].mp4'.
    // Upload the file created earlier and its metadata to the storage reference.
    // Throw an exception if there is a failure.

    // Get the download URL of the newly uploaded video file. Send it to the database
    // using the addFile function (written in database component).
    return 0; //success
  }

  /// Uploads an audio file to the file storage and stores the download URL in the database.
  Future<int> uploadTxt(int missionNumber, String filePath) async {
    // Create a File object from the file path [filePath].

    // List all of the .mp3 files currently in the file storage system.
    // Count them and store the number (plus one) as a variable int mp3Count.

    // Create metadata to set the max amount of time that the audio file may reside in the cache (7 days).

    // Try and await: create a reference to the audio file for the database in the form of
    // '/[currentGame]/[string representation of missionNumber]/[string rep of mp3Count].mp3'.
    // Upload the file created earlier and its metadata to the storage reference.
    // Throw an exception if there is a failure.

    // Get the download URL of the newly uploaded audio file. Send it to the database
    // using the addFile function (written in database component).
    return 0; //success
  }

  /* In the specifications there are different functions for downloading different files;
   * However, one function does it all. The cache manager also takes care of keeping files up
   * to date and deleting them when space runs out or after a specified amount of time */

  /// Downloads to or retrieves a file from the cache
  Stream<FileResponse> downloadFile(String downloadURL) {
    // Instantiate cache manager by calling its constructor.
    // Use the getFileStream method to get the file stream. The cache manager checks
    // if it is in the cache or if it is in the file storage and returns a file stream.
    // set the file stream as our fileStream variable initialized with the class.
    return fileStream;
  }
}
