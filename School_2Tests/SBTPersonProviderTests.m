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
#import "SBTPerson.h"


@interface SBTPersonProviderTests : XCTestCase

@property (nonatomic, strong) SBTPersonProvider* provider;
@property (nonatomic,strong) SBTPerson* person;

@end


@implementation SBTPersonProviderTests

- (void)setUp {
    [super setUp];
    self.provider = OCMPartialMock([SBTPersonProvider new]);
    self.person = OCMPartialMock([SBTPerson new]);
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    self.provider=nil;
    self.person=nil;
    [super tearDown];
}

- (void) testGetPersonListFromJSONNil{
    NSArray* JsonData = [self.provider getPersonListFromJSON:nil];
    expect(JsonData).to.beNil();
}

- (void) testGetPersonListFromJSONEmpty{
    id JsonData=OCMClassMock([NSArray class] );
    OCMStub([JsonData count]).andReturn(0);
    NSArray *Data = [self.provider getPersonListFromJSON:JsonData];
    expect(Data.count).to.equal(0);
}

- (void) testGetPersonListFromJSONData{
    id person = OCMPartialMock([SBTPerson new]);
    OCMStub([person new]).andReturn(person);
    id pDict = OCMClassMock([NSDictionary class]);
    NSArray *JsonData = @[pDict];
    OCMStub([JsonData firstObject]).andReturn(pDict);
    OCMStub(pDict[@"firstName"]).andReturn(@"1");
    OCMStub(pDict[@"lastName"]).andReturn(@"2");
    OCMStub(pDict[@"secondName"]).andReturn(@"3");
    NSArray* Data = [self.provider getPersonListFromJSON:JsonData];
    expect(Data.count).to.equal(1);
    expect(Data.firstObject).toNot.beNil();
    expect([Data.firstObject class]).to.equal([SBTPerson class]);
    expect([Data.firstObject firstName]).to.equal(@"1");
    expect([Data.firstObject lastName]).to.equal(@"2");
    expect([Data.firstObject secondName]).to.equal(@"3");
}

@end

