# Lightstreamer SDK for macOS Clients

This client implements the Lightstreamer Unified Client API. The goal of the Unified API is to offer a common set of interfaces and functionalities across different languages and platforms.

This SDK is compatible with macOS 10.10 and newer.

The library is distributed as an XCFramework that supports compilations targeted to a device with Intel x86-64 or ARM64 architectures. Bitcode segments are also included.

The library is available for import through Swift Package Manager or via direct traditional download.

## Importing the Library via Swift Package Manager

Follow these simple steps:

* Select your Xcode project, then click on "Swift Packages".
* Click on the "+" button and enter the following repository URL: https://github.com/Lightstreamer/Lightstreamer_macOS_Client.git
* In the Package Options panel select the "Exact" version rule specifying the latest version, or whatever other rule you consider appropriate.
* Once completed, add the framework in the appropriate targets of your project.
* Finally, add the following import line wherever you need the client library's services:

  ```
  #import <Lightstreamer_macOS_Client/Lightstreamer_macOS_Client.h>
  ```

## Importing the Library Traditionally

If Swift Package Manager is not for you, you can still install the library more traditionally by following these steps:

* Download the macOS client library's distribution from [our website](https://lightstreamer.com/res/ls-macos-client/4.3.2/lib/ls-macos-client-4.3.2.zip).
* Unzip the library's distribution and copy the framework inside your project.
* Once completed, add the framework in the appropriate targets of your project.
* In the target's Build Phases page, also add the following libraries in the Link Binary With Libraries section:
  SystemConfiguration.framework, Security.framework, libiconv
* Finally, add the following import line wherever you need the client library's services:

  ```
  #import <Lightstreamer_macOS_Client/Lightstreamer_macOS_Client.h>
  ```
