# Variables


# targets

archive: clean
	xcodebuild archive -scheme AEPSampleExtension -archivePath "./build/ios.xcarchive" -sdk iphoneos -destination="iOS" SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES -workspace  AEPSampleExtension.xcworkspace OTHER_CFLAGS=-fembed-bitcode BITCODE_GENERATION_MODE=bitcode
	xcodebuild archive -scheme AEPSampleExtension -archivePath "./build/ios_simulator.xcarchive" -sdk iphonesimulator -destination="iOS Simulator" SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES  -workspace  AEPSampleExtension.xcworkspace OTHER_CFLAGS=-fembed-bitcode BITCODE_GENERATION_MODE=bitcode
	xcodebuild -create-xcframework -framework ./build/ios_simulator.xcarchive/Products/Library/Frameworks/AEPSampleExtension.framework -framework ./build/ios.xcarchive/Products/Library/Frameworks/AEPSampleExtension.framework -output ./build/AEPSampleExtension.xcframework

clean:
	rm -rf ./build

