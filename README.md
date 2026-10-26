# PhotoBooth Studio

This public repository hosts installable app releases and the Sparkle update feed. The application source code is maintained separately in a private repository.

## Latest test release

**Version 1.0.0** is an experimental macOS release for testing the app and its auto-update channel.

1. Download `PhotoBoothStudio-1.0.0.zip` from [Releases](https://github.com/thienle99-dev/photobooth-app-release/releases/latest).
2. Unzip it and move `PhotoBoothStudio.app` to Applications.
3. The app requires macOS 14 or later. This build targets Apple Silicon.

### Distribution status

This build is ad hoc signed and has not been notarized with Apple Developer ID. macOS may show a security warning, and first launch/update behavior has not been verified on a clean Mac. Use it only on a test machine you control; it is not a production-ready distribution.

Sparkle checks the signed update archive using the app's EdDSA public key. That signature does not replace Apple's Developer ID signing or notarization.

## Auto-update feed

The appcast is published as a release asset at:

`https://github.com/thienle99-dev/photobooth-app-release/releases/latest/download/appcast.xml`

Each release should include both the app ZIP and `appcast.xml`. Keep the EdDSA private key in the maintainer's Keychain or secure backup; never upload it to this repository.
