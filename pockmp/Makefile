XCFRAMEWORK_PATH=$(HOME)/.kmpXcframeworks/Shared.xcframework.zip
DESTINATION=pockmp/Frameworks/Shared.xcframework

.PHONY: consume_local_kmp

consume_local_kmp:
		@echo "Updating KMP XCFramework in iOS project..."
		@if [ ! -f "$(XCFRAMEWORK_PATH)" ]; then \
			echo "Error: XCFramework zip not found at $(XCFRAMEWORK_PATH)"; \
			exit 1; \
		fi
		@mkdir -p pockmp/Frameworks
		@rm -rf $(DESTINATION)
		@echo "Extracting XCFramework..."
		@unzip -o $(XCFRAMEWORK_PATH) -d pockmp/Frameworks/
		@echo "XCFramework updated successfully!"
    
.PHONY: update_kmp

update_kmp:
		@echo "Resolving Swift package dependencies for pockmp.xcodeproj..."
		xcodebuild -resolvePackageDependencies -project pockmp.xcodeproj
