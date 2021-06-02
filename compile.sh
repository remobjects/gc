#!/bin/bash

export COMMONFLAGS=" -Wno-deprecated-declarations -Wno-nullability-completeness -Wno-unknown-attributes -Wno-builtin-requires-header -D HAVE_DL_ITERATE_PHDR -D GC_THREADS -I libatomic_ops\src -Wno-expansion-to-defined -Wno-ignored-attributes -Ilibatomic_ops/src "
export XCODE="/Users/mh/Applications/Xcode-12.3-Beta1.app"

# macOS

export TARGET=macos

export TRIPLE=x86_64-apple-macosx
export OSXINC=$XCODE/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/
./innercompile.sh

export TRIPLE=arm64-apple-macosx
export OSXINC=$XCODE/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/
./innercompile.sh


# UIKit for Mac

export TARGET=catalyst

export TRIPLE=x86_64-apple-ios-macabi
export OSXINC=$XCODE/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/
./innercompile.sh

export TRIPLE=arm64-apple-ios-macabi
export OSXINC=$XCODE/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/
./innercompile.sh


# iOS

export TARGET=ios
export TRIPLE=arm64-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk
./innercompile.sh

export TRIPLE=armv7s-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk
./innercompile.sh

export TRIPLE=armv7-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk
./innercompile.sh

export TARGET=iossimulator
export TRIPLE=arm64-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk
./innercompile.sh

export TRIPLE=x86_64-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk
./innercompile.sh

export TRIPLE=i386-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk
./innercompile.sh

# tvOS

export TARGET=tvos
export TRIPLE=arm64-apple-tvos
export OSXINC=$XCODE/Contents/Developer/Platforms/AppleTVOS.platform/Developer/SDKs/AppleTVOS.sdk
./innercompile.sh

export TARGET=tvos=simulator
export TRIPLE=arm64-apple-tvos
export OSXINC=$XCODE/Contents/Developer/Platforms/AppleTVSimulator.platform/Developer/SDKs/AppleTVSimulator.sdk
./innercompile.sh

export TRIPLE=x86_64-apple-tvos
export OSXINC=$XCODE/Contents/Developer/Platforms/AppleTVSimulator.platform/Developer/SDKs/AppleTVSimulator.sdk
./innercompile.sh

# watchOS

export TARGET=watchos
export TRIPLE=arm64_32-apple-watchos
export OSXINC=$XCODE/Contents/Developer/Platforms/WatchOS.platform/Developer/SDKs/WatchOS.sdk
#./innercompile.sh

export TRIPLE=armv7k-apple-watchos
export OSXINC=$XCODE/Contents/Developer/Platforms/WatchOS.platform/Developer/SDKs/WatchOS.sdk
#./innercompile.sh

export TARGET=iosimulator
export TRIPLE=arm64-apple-watchos
export OSXINC=$XCODE/Contents/Developer/Platforms/Watchimulator.platform/Developer/SDKs/WatchSimulator.sdk
#./innercompile.sh

export TRIPLE=x86_64-apple-watchos
export OSXINC=$XCODE/Contents/Developer/Platforms/Watchimulator.platform/Developer/SDKs/WatchSimulator.sdk
#./innercompile.sh

export TRIPLE=i386-apple-watchos
export OSXINC=$XCODE/Contents/Developer/Platforms/Watchimulator.platform/Developer/SDKs/WatchSimulator.sdk
#./innercompile.sh


