# GitHub Setup Instructions

Follow these steps to set up the GitHub repository and enable automated builds.

## Step 1: Create GitHub Repository

1. Go to [GitHub](https://github.com) and log in
2. Click the "+" icon in the top right, select "New repository"
3. Configure the repository:
   - **Repository name**: `HelloWorld-Mac`
   - **Description**: "A simple macOS Hello World application built with SwiftUI"
   - **Visibility**: Public (or Private if you prefer)
   - **Do NOT** initialize with README, .gitignore, or license (we already have these)
4. Click "Create repository"

## Step 2: Push Code to GitHub

GitHub will show you commands to push an existing repository. In the `HelloWorld.app` directory, run:

```bash
cd /path/to/HelloWorld.app

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: HelloWorld Mac app with CI/CD"

# Add remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/HelloWorld-Mac.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Verify GitHub Actions

1. Go to your repository on GitHub
2. Click the "Actions" tab
3. You should see the "Build and Release macOS App" workflow running
4. Wait for it to complete (usually 2-5 minutes)

The first build will create an artifact that you can download from the Actions tab.

## Step 4: Create Your First Release

To create a downloadable release:

```bash
# Create a version tag
git tag v1.0.0

# Push the tag to GitHub
git push origin v1.0.0
```

This will trigger the release workflow, which will:
1. Build the app
2. Create a DMG file
3. Create a GitHub Release
4. Upload the DMG for download

## Step 5: Update README Links

After creating the repository, update the README.md file to replace `YOUR_USERNAME` with your actual GitHub username:

1. Open `README.md`
2. Find and replace all instances of `YOUR_USERNAME` with your GitHub username
3. Commit and push the changes:

```bash
git add README.md
git commit -m "Update README with actual GitHub username"
git push
```

## Downloading the App

Once a release is created, users can download the app:

1. Go to `https://github.com/YOUR_USERNAME/HelloWorld-Mac/releases`
2. Click on the latest release
3. Download the `HelloWorld.dmg` file
4. Open the DMG and drag the app to Applications

## Troubleshooting

### Build Fails on GitHub Actions

**Error: "xcodebuild command not found"**
- This shouldn't happen on `macos-latest` runners, but if it does, check the Xcode setup step

**Error: "Code signing required"**
- The workflow is configured to skip code signing with `CODE_SIGN_IDENTITY="-"`
- This is fine for free distribution, but apps won't pass Gatekeeper without proper signing

**Error: "Permission denied"**
- Make sure GitHub Actions has permission to create releases
- Go to Settings > Actions > General > Workflow permissions
- Select "Read and write permissions"

### Code Signing (Optional)

For distribution outside of development, you'll want to sign the app:

1. Add your signing certificate to GitHub Secrets
2. Update the workflow to use your certificate
3. Enable hardened runtime and notarization

For now, unsigned builds work fine for testing and personal use.

## Next Steps

- Customize the app in `HelloWorld/ContentView.swift`
- Push changes to see automatic builds
- Create new tags for new releases
- Share the release link with users

Enjoy your automated Mac app builds!
