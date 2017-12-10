//
//  SBTPersonProviderTests.m
//  School_2Tests
//
//  Created by Сергей Алтухов on 09.12.2017.
//  Copyright © 2017 none. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SBTPersonProvider.h"
#import <Expecta/Expecta.h>
#import <OCMock/OCMock.h>
#import "SBTPerson.h"

@interface SBTPersonProvider (Tests)

@property (nonatomic, strong) SBTPerson *person;

@end

@interface SBTPersonProviderTests : XCTestCase

@property (nonatomic, strong) SBTPersonProvider *personProvider;


@end

@implementation SBTPersonProviderTests

- (void)setUp {
    [super setUp];
    self.personProvider = OCMPartialMock([SBTPersonProvider new]);
    
}

- (void)tearDown {
    
    [super tearDown];
}

- (void)testGetPersonListFromJSONJsonDataNil
{
    NSArray *personList = [self.personProvider getPersonListFromJSON:nil];
    expect(personList).to.beNil();
}

- (void)testGetPersonListFromJSONJsonDataEmpty
{
    NSArray *personList = [self.personProvider getPersonListFromJSON:@[]];
    expect(personList).toNot.beNil();
    expect(personList.count == 0).to.equal(YES);
}


- (void)testGetPersonListFromJSONJsonDataWellOriginalCode
{
    NSDictionary *jsonDataDictionary = @{
                                         @"firstName" : @"Sergey",
                                         @"lastName" : @"Altukhov",
                                         @"secondName" : @"V"
                                         };
    NSArray *jsonData = @[jsonDataDictionary];
    id person = OCMPartialMock([SBTPerson new]);
    OCMStub([person new]).andReturn(person);
    NSArray <SBTPerson *> *personList = [self.personProvider getPersonListFromJSON:jsonData];

    expect(personList).toNot.beNil();
    expect(personList[0].firstName).equal(jsonDataDictionary[@"firstName"]);
    expect(personList[0].lastName).equal(jsonDataDictionary[@"lastName"]);
    expect(personList[0].secondName).equal(jsonDataDictionary[@"secondName"]);
    expect([personList[0] class]).equal([SBTPerson class]);
}


//- (void)testGetPersonListFromJSONJsonDataWell
//{
//    NSDictionary *jsonDataDictionary = @{
//                                         @"firstName" : @"Sergey",
//                                         @"lastName" : @"Altukhov",
//                                         @"secondName" : @"V"
//                                         };
//
//    NSArray *jsonData = @[jsonDataDictionary];
//    id person = OCMPartialMock([SBTPerson new]);
//    OCMStub(self.personProvider.person).andReturn(person);
//    NSArray <SBTPerson *> *personList = [self.personProvider getPersonListFromJSON:jsonData];
//
//    expect(personList).toNot.beNil();
//    expect(personList[0]).equal(self.personProvider.person);
//    expect(personList[0].firstName).equal(jsonDataDictionary[@"firstName"]);
//    expect(personList[0].lastName).equal(jsonDataDictionary[@"lastName"]);
//    expect(personList[0].secondName).equal(jsonDataDictionary[@"secondName"]);
//}

@end
