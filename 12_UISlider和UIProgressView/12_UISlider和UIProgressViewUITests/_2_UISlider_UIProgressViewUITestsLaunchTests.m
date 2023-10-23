//
//  _2_UISlider_UIProgressViewUITestsLaunchTests.m
//  12_UISlider和UIProgressViewUITests
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <XCTest/XCTest.h>

@interface _2_UISlider_UIProgressViewUITestsLaunchTests : XCTestCase

@end

@implementation _2_UISlider_UIProgressViewUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
