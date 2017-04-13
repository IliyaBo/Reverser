//
//  UppercaseTests.m
//  Reverser
//
//  Created by iOS-School-1 on 13.04.17.
//  Copyright © 2017 Alexey Ulenkov. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface UppercaseUITests : XCTestCase

@end

@implementation UppercaseUITests

- (void)setUp {
    [super setUp];
    
}

- (void)tearDown {
    [super tearDown];
}

- (void)testExample {
     NSString *reversedString = @"ABCD";
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *textField = [[app.otherElements containingType:XCUIElementTypeButton identifier:@"Button"] childrenMatchingType:XCUIElementTypeTextField].element;
    [textField tap];
    [textField typeText:@"abcd"];
    [app.buttons[@"Button"] tap];
    
    XCUIElement *resultLabel = [app.staticTexts elementMatchingType:XCUIElementTypeAny identifier:reversedString];
    
    XCTAssertNotNil(resultLabel, @"Basic");
    
}

@end
