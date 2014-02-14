//
//  VVStackTests.m
//  VVStackTests
//
//  Created by 王 巍 on 14-2-13.
//  Copyright (c) 2014年 OneV's Den. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "VVStack.h"

@interface VVStackTests : XCTestCase
@property (nonatomic, strong) VVStack *stack;
@end

@implementation VVStackTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _stack = [VVStack new];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStackExist {
    XCTAssertNotNil([VVStack class], @"VVStack class should exist.");
}

- (void)testStackObjectCanBeCreated {

    XCTAssertNotNil(self.stack, @"VVStack object can be created.");
}

- (void)testPushANumberAndGetIt {
    [self.stack push:2.3];
    double topNumber = [self.stack top];
    XCTAssertEqual(topNumber, 2.3, @"VVStack should can be pushed and has that top value.");
    
    [self.stack push:4.6];
    topNumber = [self.stack top];
    XCTAssertEqual(topNumber, 4.6, @"Top value of VVStack should be the last num pushed into it");
}

@end
