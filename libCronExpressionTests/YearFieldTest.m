//
//  YearFieldTests.m
//  libCronExpression
//
//  Created by c 4 on 14/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "YearFieldTest.h"
#import "YearField.h"

@implementation YearFieldTest

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

- (void)testValidatesField
{
    YearField* field = [[YearField alloc ]init];
    
    XCTAssertTrue([field validate: @"2011"], @"2011 is a valid value for year");
    XCTAssertTrue([field validate: @"*"], @"* is a valid value for year");
    XCTAssertTrue([field validate: @"*/10,2012,1-12"], @"*/10,2012,1-12 is a valid value for year");
}

@end
