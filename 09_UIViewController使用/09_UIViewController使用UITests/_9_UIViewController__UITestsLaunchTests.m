//
//  _9_UIViewController__UITestsLaunchTests.m
//  09_UIViewController使用UITests
//
//  Created by 差不多先生 on 2023/10/23.
//

#import <XCTest/XCTest.h>

@interface _9_UIViewController__UITestsLaunchTests : XCTestCase

@end

@implementation _9_UIViewController__UITestsLaunchTests

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
