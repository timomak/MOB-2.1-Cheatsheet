# MOB-2.1-Cheatsheet
Everything you need to pass mobile 2.1 at make school.

# Persistances

### Filesystem
* Can store simple data (Not really a class)
* No objects just as Data()

* USE CASE:
 * Downloading a movie

### Core Data
* Can save complex objects
* Relationships - one to many relationship (Owner and Dog relationship). An owner can have multiple dogs.
* Larger data
* Stores models

* USE CASES:
 * Uses SQLite, not Filesystem
 * Can have a backup with a child context (Notes app example [save while typing])

![corestack](img/corestack.png)


### Realm
* Simple: Data exposed as objects and queryable by code. Most of our users pick it up intuitively, getting simple apps up & running in minutes.
* Modern: Supports relationships, generics, vectorization and Swift.
* Fast: Faster than even raw SQLite on common operations, while maintaining an extremely rich feature set.

* Easy to set up
* Less code
* Objects
* Queries / predicates
* Sort

**Realm is better than Core Data because it's easier to install and use.**



### UserDefaults / plist
There are options that are perfect for small cases and two of them are using plists and handling data with UserDefaults. With these methods we can avoid the overhead of setting up more than we need and they’re also simpler to implement.

#### Plist
* Local
* Key : Value Data - Basic Swift Classes will work. No custom objects.
* XML Format
* Stores crucial information
* Easy to use.
* Cannot modify Info.plist
* Permission keys have to be written into the plist
* Remember keys and entry points.
* Opening configuration values (Bundle name, version, start screen, app info)
* Small Data
* Not encrypted
* DO NOT STORE SECRETS unless you .gitignore
* Pretty easy

A property list, or plist, is an XML file that contains key-value data. In iOS, a common plist is the Info.plist file. An information property list file is a structured text file that contains essential configuration information for a bundled executable

#### UserDefaults
* Local
* small amounts of data (usually)
* Key : Value - Basic Swift Classes will work. No custom objects.
* Unsafe
* Very easy

* USE CASE:
 * Check if the app is being opened for the first time.
 * User preferences
 * User flow

### Keychain
* Secure
* Encrypted
* Stored locally (but shared between devices in iCould)
* Small amounts of data

* USE CASE:
 * Store user passwords
 * Store sensitive data



















# Study Guide for MOB 2.1 Final Assessment
**Overview**: Your final exam will focus on the learning outcomes for this course.  Review each outcome thoroughly and ask questions if you are unclear about the outcome or your level of understanding.

**Final Exam Format:** Your final exam will be on May 13th.  It will consist of two parts: one will be answered in your computer using an Xcode project, and the second one, will be written on paper. The exam will take 2 hours to complete.  If you have a disability that requires any accomodation for the final exam, please reach out to Jen or Anne to make sure this is documented according to the Make School Accommodations Policy and clarify with your instructor what accommodations will be made
Use the built in persistence mechanisms in iOS as well as some third party options for persistence
Store and retrieve sensitive information in iOS.
Learn and understand the iOS filesystem.

**Outcomes:** Identify various ways of storing persistent information in iOS. & Compare and contrast various persistence options such as Core Data, Realm, NSCoder, UserDefaults, Keychain and chose the best options for their project.

- *Ways we learned about this in the course*
  - During the course you were exposed to different methods of persisting information.
  - Plist
  - UserDefaults
  - Keychain
  - Core Data
  - Realm

- *Ways you can demonstrate your skill / knowledge level of this outcome*
  - Identify which method best suits different scenarios.
  - Be able to compare and contrast various persistence options.
  - Be able to explain how each method works.

**Outcome:** Build apps that store information locally on an iOS device

- *Ways we learned about this in the course*
  - Many classes in this course had a starter project that you needed to complete.
  - The Core Data tutorial was a complete app.
  - Your final project is also a working app using persistence.

- *Ways you can demonstrate your skill / knowledge level of this outcome*
  - Know the basic implementation of each persistence method.

**Outcome:** Use the built in persistence mechanisms in iOS as well as some third party options for persistence

- *Ways we learned about this in the course*
  - Classes 6 - 10 covered all Core Data.
  - Class 11 covered how to use Realm

- *Ways you can demonstrate your skill / knowledge level of this outcome*
  - Be able to identify all of the components in the Core Data stack, knowing their responsibilities. Try making a diagram.
  - Identify different types of relationships.
  - Create predicates to filter data and then sort.
  - Understand the idea of using multiple contexts and child contexts.
  - CRUD methods in a project using Core Data
  - Mention the benefits of using Realm vs any other persistence method.

**Outcome:** Store and retrieve sensitive information in iOS. & Learn and understand the iOS filesystem.

- *Ways we learned about this in the course*
  - Class 4 covered how to use Keychain
  - Class 5 talked about how the Filesystem works.

- *Ways you can demonstrate your skill / knowledge level of this outcome*
  - Explain how Keychain works.
  - Describe how the Filesystem works and how we can save data combining persistence methods.

**Outcome:** Create unit tests following the Given, Where, Then structure.

- *Ways we learned about this in the course*
  - Class 3 was an introduction to unit testing.
  - Class 9 was unit testing using Core Data.
  - Class 11 asked for unit testing in a project using Realm.

- *Ways you can demonstrate your skill / knowledge level of this outcome*
  - Be able to write tests that are easy to read and that pass.
