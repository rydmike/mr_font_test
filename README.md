# mr_font_test

A small Flutter test application to test the difference in the look of fonts
on Windows, WEB DomCanvas and WEB CanvasKIT.

The application uses the Flutter StoryBoard package (https://pub.dev/packages/flutter_storyboard)
to be able show several mobile like screens on a larger canvas like WEB or Desktop. This makes it easy
too visually see the differences between the example fonts. We still need to compare screenshots
from different platforms to each other to observe differences between them.

This test contains three comparisons:

- Windows 10 desktop
- WEB, using DomCanvas
- WEB, using CanvasKit

## The results

The screenshots below show a major difference in how the fonts look when the Flutter WEB CanvasKit is used
compared to how fonts look on Android, Windows and even the default Flutter WEB DomCanvas.

You can also use the links to live examples provided further below to the DomCanvas and CanvasKit versions
and put them in separate browser tabs and switch between them to observe the significant difference in font rendering.

### Windows Desktop

On Windows Desktop we can see that the fonts look correct. We can also notice that we get a none "Roboto"
font as the default font. This is expected on the Windows platform. If Roboto is desired on Windows to
ensure consistent design the font has to be bundled and specified in the theme.

![screenshot](https://github.com/rydmike/mr_font_test/blob/master/screenshots/FontsWinDemo.png?raw=true)

### WEB, using DomCanvas

When we use the default Flutter DomCanvas to build the Flutter WEB application, the fonts look OK.
We can also see that the font no w defaults to "Roboto" also when one it is not explicitly defined.
The fonts for default and forced Roboto are thus identical.

This WEB example was made on a Windows computer and the "Roboto" font is still included as a
bundled asset, but for the default look never explicitly specified.

The DomCanvas example can be seen as a live example here:
https://rydmike.github.io/fontissue/domcanvas

![screenshot](https://github.com/rydmike/mr_font_test/blob/master/screenshots/FontsWebDomCanvasDemo.png?raw=true)

### WEB, using CanvasKit

When we use the Flutter WEB CanvasKit and build the Flutter WEB application using:

```
flutter run --release --dart-define=FLUTTER_WEB_USE_SKIA=true -d Chrome
```

We can see the fonts are NOT OK! The fonts are too thin compared to similar fonts Windows Desktop, Android and iOS too, as well as compared to the the previous WEB DomCanvas too.

The CanvasKit example can be seen as a live example here:
https://rydmike.github.io/fontissue/canvaskit

![screenshot](https://github.com/rydmike/mr_font_test/blob/master/screenshots/FontsWebCanvasKitsDemo.png?raw=true)

### Setup and version

These tests and resulting screenshots were made on a Windows10 computer. The "Roboto" font was still included as a
bundled asset, but for the platform defaults, in Demo 1 never actually specified explicitly. The Demo 2 and Demo 3 specifies the desired font explicitly.

The Web results are as they were rendered on Windows 10 using Chrome version 81.0.4044.129 (Official Build) (64-bit)

The test builds where made using Flutter Channel master, as shown below:

```
[√] Flutter (Channel master, 1.18.0-9.0.pre.103, on Microsoft Windows [Version
    10.0.18363.720], locale en-US)
[√] Android toolchain - develop for Android devices (Android SDK version 28.0.3)
[√] Chrome - develop for the web
[√] Visual Studio - develop for Windows (Visual Studio Community 2019 16.5.4)
[√] Android Studio (version 3.6)
[√] IntelliJ IDEA Community Edition (version 2019.2)
[√] VS Code (version 1.44.2)
[√] Connected device (4 available)

• No issues found!
> flutter doctor -v
[√] Flutter (Channel master, 1.18.0-9.0.pre.103, on Microsoft Windows [Version
    10.0.18363.720], locale en-US)
    • Flutter version 1.18.0-9.0.pre.103
    • Framework revision 87b3f1635e (59 minutes ago), 2020-05-04 19:05:42 +0300
    • Engine revision 2037e0f18d
    • Dart version 2.9.0 (build 2.9.0-5.0.dev d5af40b640)

[√] Android toolchain - develop for Android devices (Android SDK version 28.0.3)
    • Platform android-28, build-tools 28.0.3
    • Java binary at: C:\Program Files\Android\Android Studio\jre\bin\java
    • Java version OpenJDK Runtime Environment (build 1.8.0_212-release-1586-b04)
    • All Android licenses accepted.

[√] Chrome - develop for the web
    • Chrome at C:\Program Files (x86)\Google\Chrome\Application\chrome.exe

[√] Visual Studio - develop for Windows (Visual Studio Community 2019 16.5.4)
    • Visual Studio at C:\Program Files (x86)\Microsoft Visual Studio\2019\Community
    • Visual Studio Community 2019 version 16.5.30011.22

[√] Android Studio (version 3.6)
    • Android Studio at C:\Program Files\Android\Android Studio
    • Flutter plugin version 45.1.1
    • Dart plugin version 192.7761
    • Java version OpenJDK Runtime Environment (build 1.8.0_212-release-1586-b04)

[√] IntelliJ IDEA Community Edition (version 2019.2)
    • IntelliJ at C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2018.3.1
    • Flutter plugin version 35.3.3
    • Dart plugin version 192.7402

[√] VS Code (version 1.44.2)
    • Flutter extension version 3.10.0

[√] Connected device (4 available)
    • Nexus 7    • 0a99f5e8   • android-arm    • Android 6.0.1 (API 23)
    • Windows    • Windows    • windows-x64    • Microsoft Windows [Version
      10.0.18363.720]
    • Web Server • web-server • web-javascript • Flutter Tools
    • Chrome     • chrome     • web-javascript • Google Chrome 81.0.4044.129
```
