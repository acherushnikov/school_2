//
//  SBTPersonProviderTests.m
//  School_2Tests
//
//  Created by Snigiryov on 11.12.17.
//  Copyright © 2017 none. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import <Expecta/Expecta.h>
#import "SBTPersonProvider.h"


@interface SBTPersonProviderTests : XCTestCase

@property (nonatomic, strong) SBTPersonProvider* provider;

@end

@interface SBTPersonProvider(Tests)

//@property (nonatomic, strong) SBTPersonProvider* provider;

@end

@implementation SBTPersonProviderTests

- (void)setUp {
    [super setUp];
    self.provider=OCMClassMock([SBTPersonProvider class]);
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.provider=nil;
    [super tearDown];
}

- (void) testGetPersonListFromJSONNil{
    NSArray* JsonData = [self.provider getPersonListFromJSON:nil];
    expect(JsonData).to.beNil();
}

@end

/*- (NSArray *)getPersonListFromJSON:(NSArray *)jsonData
{
    if (!jsonData)
    {
        return nil;
    }
    
    NSMutableArray *personList = [NSMutableArray arrayWithCapacity:jsonData.count];
    for (NSDictionary *personDictionary in jsonData)
    {
        SBTPerson *person = [SBTPerson new];
        person.firstName = personDictionary[@"firstName"];
        person.lastName = personDictionary[@"lastName"];
        person.secondName = personDictionary[@"secondName"];
        [personList addObject:person];
    }
    return [personList copy];
}*/
