/// File Storage Component
///
/// Team HvZ App
///
/// Members: Santiago Rodriguez, Alex Hadley, Matthew Waddell, Kyra Clark
///
/// Project 3E.1 — Component Design: File Storage
///   Design: https://github.com/alexhad6/HvZ-app/blob/master/Administrative/Phase%203/design_3e_sr.dart
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

// importing the File class to handle files.
import 'dart:io';

/// Class: FileStorageService
///
/// Purpose: contains functions for uploading and downloading files to the file
/// storage. Makes use of cached values when returning a file stream.
class FileStorageService {
  // Storage instance.
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  // This will use the default constructor which does not need to be explicitly
  // created as it does not take in any arguments

  /// Organizes the file storage for a fresh, new game.
  Future<int> newGame(String gameName) async {
    // Set any character to be uploaded to create the new folder.
    // Encode the raw data to utf-8 standard.

    // Create a Firebase storage reference to upload to using the [currentGame]
    // string which should be updated for the new game.

    // Try uploading the data to create the new folder, await it, throw expection
    // if there is a failure.
    return 0; //success
  }

  /// Creates a mission folder in the file storage for a new mission.
  Future<int> newMission(int missionNumber) async {
    // Set any character to be uploaded to create the new folder.
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
  Future<int> uploadAudio(int missionNumber, String filePath) async {
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
  File downloadFile(String downloadURL) {
    // Instantiate cache manager by calling its constructor.
    // Use the getFileStream method to get the file stream. The cache manager checks
    // if it is in the cache or if it is in the file storage and returns a file stream.

    // set the file stream to a variable and
    // convert from file stream to File in the [dfile] variable.

    // Throw exception if there is any failure in downloading the files.
    return dfile;
  }

  /// Downloads the files relevant to a particular mission.
  List<File> downloadMissionFiles(int missionNumber) {
    // Call [getMissionFiles(String missionNum)] to get the paths for the files
    // relevant to the mission.

    // Loop through the list of files and call [downloadFile] for each URL.
    // Store in a dynamic list of files called [files].
    return files;
  }
}

/// This is a design document for the Zombie Lineage component of the HvZ App.
/// The Zombie Lineage component allows users to view the ancestry of zombies
/// and their descendendants. It allows users to go up the lineage by seeing who
/// tagged a particular zombie, and it allows users to go down the lineage by seeing
/// who that user tagged. The user can then navigate to a tagged user or the user
/// that tagged the user being viewed. From there, the user can see all of the
/// aforementioned information but in the context of this new user. The information
/// about who tagged who and who was tagged by who is retrieved from the database.
///
/// This component implements a ZombieLineage class which contains the user information
/// for the user being viewed. The class uses another class called LineageUser
/// which contains user information relevant to the ZombieLineage class.

class ZombieLineage {
  // Contains the user object of the user being examined.
  LineageUser currentUser;

  // Constructor for the class.
  ZombieLineage(String userID, Database database) {
    // Create a [LineageUser] object using the given parameters.
    // Set the [currentUser] object to be this newly created object.
  }

  // Give the application the representation to view the zombie lineage at one
  // level of depth.
  List<LineageUser> lineageDepthOne() {
    return currentUser._representation;
  }

  // Give the application the representation to view the zombie lineage at two
  // levels of depth. This function references the [LineageUser] [_representation]
  // function found below which returns a list of [LineageUser] objects. This
  // function returns a list of lists of [LineageUser] objects.
  List<List> lineageDepthTwo() {
    // Create a list of lists called [twoDepth]
    //
    // Get the first element of [currentUser._representation] (user who tagged
    // current user).
    // Add that user's [_representation] list as the first element of [twoDepth]
    //
    // Represent [currentUser] as a single item list and add it as the second
    // element of [twoDepth]
    //
    // Loop from the third (index 2) element of [currentUser._representation]
    // until the end of [currentUser._representation] to get the user objects of
    // the people who were tagged by the current user.
    // Add each of their [_representation] lists to [twoDepth]
    //
    // The final form of [twoDepth] should be as follows:
    // [[taggerTagger, tagger, tagger's tagged1, tagger's tagged2, ...],
    // [current user],
    // [current user, tagged1, tagged1's tagged1, tagged1's tagged2, ...],
    // [current user, tagged2, tagged2's tagged1, tagged2's tagged2, ...],
    // ...]
    return twoDepth;
  }

  // Changes who the current user is. This is called by the application when
  // navigating through the zombie lineage.
  void changeUser(LineageUser newUser) {
    currentUser = newUser;
  }
}

class LineageUser {
  // Real-life name of the user.
  String name;

  // User ID for database purposes.
  String linUserID;

  // User ID that turned current user into a zombie.
  String taggedByID;

  // List of user IDs that current user has tagged.
  List<String> taggedUsersIDs;

  // Constructor for the class.
  LineageUser(String userID, Database database) {
    // Set object's [linUserID] to [userID].

    // Set object's [name] by using database function [getName] with [userID].

    // Set object's [taggedByID] by using database function [getTaggedBy] with
    // [userID].

    // Set object's [taggedUsersIDs] by using database function [getTagged] with
    // [userID].
  }

  // Getter function for the user's name
  String get userName {
    return name;
  }

  // Getter function for user's ID
  String get userID {
    return linUserID;
  }

  // Getter function for the full representation of the object.
  List<LineageUser> get _representation {
    // Create a dynamic list of LineageUsers called [userRepresentation]
    //
    // Create a [LineageUser] from [taggedByID] for the person who tagged the
    // current user. Add it to the list. If it was null, add null to the list
    // instead.
    //
    // Add the current [LineageUser] to the list.
    //
    // Loop through [taggedUsersIDs] and create a [LineageUser] object for each
    // of the people who have been tagged by the current user. Add them to the list.
    // If the [taggedUsersIDs] list was null, just add one null to the list.
    //
    // The list should be in the following form:
    // [user who tagged the current user,
    // current user,
    // user tagged by current user,
    // user tagged by current user,
    // ...]
    return userRepresentation;
  }
}

/// Addressing Feedback:
///
/// 1. Feedback: the getCurrentGame() function is not in the specifications. The database
/// does not store the current game name, so it cannot be retrieved from the database.
///
/// Source: Alex Hadley
///
/// CHANGE APPROVED: The file storage cannot call a function that does not exist.
/// Instead, the newGame function has been modified in the specifications and
/// the design to take in a string with the current game name.
///
///
/// 2. Feedback: The [getMissionFiles] function from the specifications is never
/// called.
///
/// Source: Professor Kampe
///
/// CHANGE APPROVED: It is now called in the [downloadMissionFiles] function which
/// was added as part of the specification revisions. Its purpose is to conveniently
/// download all the files for a mission at once given that that is the main
/// reason file storage is a component.abstract
///
///
/// 3. Feedback: There is no way for the client to get a list of the files available
/// to be downloaded for the current mission.
///
/// Source: Professor Kampe
///
/// CHANGE REJECTED: This functionality is not necessary for the component to do
/// its job of downloading the correct mission files for a particular mission.
/// The paths of the mission files are already stored in the database, and they
/// are automatically retrieved by the [downloadMissionFiles] function. This
/// functionality may be helpful for testing whether something was uploaded correctly
/// (there are built in functions for this), but it is not necessary for the
/// component design.
///
///
/// 4. Feedback: Raw data is unclear as to what it means in the [newGame] function
/// and the [newMission] function.
///
/// Source: Alex Hadley
///
/// CHANGE ACCEPTED: This should be clear enough for an experienced programmer to
/// code after reading the design. It has been changed to say "any character" instead
/// of raw data.
///
///
/// 5. Feedback: You should handle file retrieval from the file stream in the
/// [downloadFile] function. Convert the file stream to a file rather than leave
/// it as a file stream. The filestream class variable does not seem like it has
/// a real purpose either.
///
/// Source: Alex Hadley
///
/// CHANGE ACCEPTED: The file storage component should do this and not leave the
/// work to the application to translate the file stream into something usable.
/// The File stream now is converted to a file, and the filestream class variable
/// has no use, so it has been removed.
///
///
/// 6. Feedback: Feedback: File storage component is not complex.
///
/// Source: Professor Kampe
///
/// CHANGE ACCEPTED: The file storage does not do enough complex behavior on its
/// own. The cache component was supposed to add complexity, but there was a library
/// that already took care of it. A new component, the Zombie Lineage component,
/// has been added to supplement the file storage component with complexity. This
/// component must keep track of the relationships between zombies like a data
/// structure. Cycling through the relationships between the different zombies
/// adds the complexity.
///
///
/// 7. Feedback: Rather than return String IDs for the Zombie Lineage component,
/// it seems easier to return [LineageUser] objects.
///
/// Source: Alex Hadley
///
/// CHANGE ACCEPTED: For the same reason the file storage was modified to return
/// files, this has been modified to return the lineage user objects which are
/// easier for the application to use than user IDs. From the lineage object,
/// the application can get information such as the player's name and the people
/// the player has tagged without needing to look it up in the database.
///
///
/// 8. Feedback: To make the component more interesting, you may want to add more
/// levels of depth for the zombie lineage.
///
/// Source: Alex Hadley
///
/// CHANGE ACCEPTED: This adds some more complexity to the component and allows
/// the users to be able to view more information at once.
