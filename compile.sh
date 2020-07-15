#!/bin/bash

export COMMONFLAGS=" -Wno-deprecated-declarations -Wno-nullability-completeness -Wno-unknown-attributes -Wno-builtin-requires-header -D HAVE_DL_ITERATE_PHDR -D GC_THREADS -I libatomic_ops\src -Wno-expansion-to-defined -Wno-ignored-attributes -Ilibatomic_ops/src "
export XCODE="/Users/mg/Applications/Xcode-12-Beta2-with-ARM.app"

# macOS

export TRIPLE=x86_64-apple-macosx
export OSXINC=$XCODE/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/
./innercompile.sh

export TRIPLE=arm64-apple-macosx
export OSXINC=$XCODE/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/
./innercompile.sh


# UIKit for Mac

export TRIPLE=x86_64-apple-ios-macabi
export OSXINC=$XCODE/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/
./innercompile.sh

export TRIPLE=arm64-apple-ios-macabi
export OSXINC=$XCODE/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/
./innercompile.sh


# iOS

export TRIPLE=arm64-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include
./innercompile.sh

export TRIPLE=armv7s-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include
./innercompile.sh

export TRIPLE=armv7-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include
./innercompile.sh

export TRIPLE=x86_64-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/include
./innercompile.sh

export TRIPLE=i386-apple-ios
export OSXINC=$XCODE/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/include
./innercompile.sh


# tvOS

export TRIPLE=arm64-apple-tvos
export OSXINC=$XCODE/Contents/Developer/Platforms/AppleTVOS.platform/Developer/SDKs/AppleTVOS.sdk/usr/include
./innercompile.sh

export TRIPLE=x86_64-apple-tvos
export OSXINC=$XCODE/Contents/Developer/Platforms/AppleTVSimulator.platform/Developer/SDKs/AppleTVSimulator.sdk/usr/include
./innercompile.sh


# watchOS

export TRIPLE=arm64_32-apple-watchos
export OSXINC=$XCODE/Contents/Developer/Platforms/WatchOS.platform/Developer/SDKs/WatchOS.sdk/usr/include
#./innercompile.sh

export TRIPLE=armv7k-apple-watchos
export OSXINC=$XCODE/Contents/Developer/Platforms/WatchOS.platform/Developer/SDKs/WatchOS.sdk/usr/include
#./innercompile.sh

export TRIPLE=x86_64-apple-watchos
export OSXINC=$XCODE/Contents/Developer/Platforms/Watchimulator.platform/Developer/SDKs/WatchSimulator.sdk/usr/include
#./innercompile.sh

export TRIPLE=i386-apple-watchos
export OSXINC=$XCODE/Contents/Developer/Platforms/Watchimulator.platform/Developer/SDKs/WatchSimulator.sdk/usr/include
#./innercompile.sh


