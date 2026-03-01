# HelloWorld Mac App

A simple macOS application that displays "Hello World" using SwiftUI.

[![Build and Release](https://github.com/biggersun/HelloWorld-Mac/actions/workflows/build.yml/badge.svg)](https://github.com/biggersun/HelloWorld-Mac/actions/workflows/build.yml)

## Download

Ready to use? Download the latest release:

**[⬇️ Download HelloWorld.dmg](https://github.com/biggersun/HelloWorld-Mac/releases/latest)**

After downloading:
1. Open the DMG file
2. Drag `HelloWorld.app` to your Applications folder
3. Launch from Applications

_Note: On first launch, you may need to right-click and select "Open" to bypass macOS Gatekeeper._

## Project Description

This is a basic Mac application template that demonstrates:
- SwiftUI framework for building native Mac interfaces
- A simple window displaying "Hello World" message
- Modern Swift application structure
- Automated CI/CD with GitHub Actions

## System Requirements

- macOS 12.0 (Monterey) or later
- Apple Silicon or Intel-based Mac

### For Development
- Xcode 13.0 or later

## Project Structure

```
HelloWorld.app/
├── HelloWorld/
│   ├── HelloWorldApp.swift    # Main application entry point
│   ├── ContentView.swift       # Main view with "Hello World" UI
│   └── Info.plist              # Application configuration
├── .gitignore                  # Git ignore rules for Xcode projects
└── README.md                   # This file
```

## How to Open and Run in Xcode

Since this project was created in a Linux environment, you'll need to create an Xcode project to run it on your Mac:

### Method 1: Create New Xcode Project (Recommended)

1. **Open Xcode** on your Mac

2. **Create a new project:**
   - Click "Create a new Xcode project" or go to File > New > Project
   - Select "macOS" tab at the top
   - Choose "App" template and click "Next"

3. **Configure the project:**
   - Product Name: `HelloWorld`
   - Team: Your development team (or leave as None)
   - Organization Identifier: `com.example` (or your own)
   - Interface: `SwiftUI`
   - Language: `Swift`
   - Click "Next" and choose a save location

4. **Replace the generated files:**
   - In Xcode's Project Navigator (left sidebar), locate:
     - `HelloWorldApp.swift`
     - `ContentView.swift`
   - Replace their contents with the files from this project:
     - Copy contents from `HelloWorld/HelloWorldApp.swift` → Replace in Xcode
     - Copy contents from `HelloWorld/ContentView.swift` → Replace in Xcode

5. **Run the application:**
   - Click the "Play" button (▶) in Xcode's toolbar
   - Or press `Cmd + R`
   - The app will build and launch, displaying "Hello World"

### Method 2: Using Command Line (Advanced)

If you prefer using the command line, you can create an Xcode project file:

1. Copy this entire `HelloWorld.app` folder to your Mac

2. Open Terminal and navigate to the folder:
   ```bash
   cd /path/to/HelloWorld.app
   ```

3. Create a new Xcode project using `swift package`:
   ```bash
   swift package init --type executable --name HelloWorld
   ```

4. Then open in Xcode:
   ```bash
   open Package.swift
   ```

5. Follow steps 4-5 from Method 1 above

## Building from Command Line

Once you have an Xcode project set up, you can also build from the command line:

```bash
# Build the project
xcodebuild -scheme HelloWorld -configuration Release

# Run the built application
open build/Release/HelloWorld.app
```

## What You'll See

When you run the application, a window will appear with:
- Large blue "Hello World" text
- A subtitle saying "Welcome to your first Mac app!"
- A clean, centered layout

The window is:
- 400 pixels wide
- 300 pixels tall
- Has a hidden title bar for a modern look
- Fixed size (non-resizable)

## Customization Ideas

You can easily modify this app by editing `ContentView.swift`:

- Change the text: Modify the `Text("Hello World")` line
- Change colors: Update `.foregroundColor(.blue)` to other colors
- Change font size: Adjust `.font(.system(size: 48, weight: .bold))`
- Add more UI elements: Add buttons, images, or other SwiftUI views

## Troubleshooting

**"Cannot preview in this file"**
- This is normal in the provided files. Previews work once opened in a proper Xcode project.

**Build errors about missing entitlements**
- Go to Project Settings > Signing & Capabilities
- Ensure "Automatically manage signing" is checked
- Select your development team

**"The app is damaged and can't be opened"**
- This happens if you try to run a build from outside Xcode
- Always use Xcode's Run button or `xcodebuild` properly

## Learning Resources

- [SwiftUI Official Documentation](https://developer.apple.com/documentation/swiftui/)
- [Swift Programming Language Guide](https://docs.swift.org/swift-book/)
- [Xcode User Guide](https://developer.apple.com/documentation/xcode)

## License

This is a sample project for educational purposes. Feel free to use and modify as needed.

## Automated Builds

This project uses GitHub Actions to automatically build the app:

- **On every push to main**: Builds the app and uploads as an artifact
- **On version tags** (e.g., `v1.0.0`): Creates a release with downloadable DMG

### Creating a Release

To create a new release:

```bash
git tag v1.0.0
git push origin v1.0.0
```

GitHub Actions will automatically:
1. Build the macOS app
2. Package it into a DMG file
3. Create a GitHub release
4. Upload the DMG for download

## CI/CD Pipeline

The build workflow (`.github/workflows/build.yml`) does:
1. Sets up the latest stable Xcode on macOS runners
2. Creates the Xcode project structure automatically
3. Builds the app in Release mode
4. Packages the app into a DMG file
5. Uploads artifacts for every build
6. Creates releases for version tags

## Notes

This project was created as a template and includes automated GitHub Actions for building and releasing the macOS app. Users can download pre-built DMG files from the Releases page without needing to build from source.
