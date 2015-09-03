//
//  DayOfWeekFieldTests.m
//  libCronExpression
//
//  Created by c 4 on 14/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DayOfWeekFieldTest.h"
#import "DayOfWeekField.h"

@implementation DayOfWeekFieldTest

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

-(void)testValidatesField
{
    DayOfWeekField* field = [[DayOfWeekField alloc ]init];
    
    XCTAssertTrue([field validate: @"1"], @"1 is a valid value for day of week");
    XCTAssertTrue([field validate: @"*"], @"* is a valid value for day of week");
    XCTAssertTrue([field validate: @"*/3,1,1-12"], @"*/3,1,1-12 is a valid value for day of week");
    XCTAssertTrue([field validate: @"SUN-2"], @"SUN-2 is a valid value for day of week");
}

-(void)testChecksIfSatisfied
{
    DayOfWeekField* field = [[DayOfWeekField alloc ]init];
    XCTAssertTrue([field isSatisfiedBy: [NSDate date] byValue:@"?"], @"");
}

@end
