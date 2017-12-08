//
//  SBTServiceTests.m
//  School_2Tests
//
//  Created by Alexander Cherushnikov on 08.12.2017.
//  Copyright © 2017 none. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import <Expecta/Expecta.h>
#import "SBTService.h"
#import "SBTPersonProvider.h"


@interface SBTService(Tests)

- (NSArray *)fakeData;

@end


@interface SBTServiceTests : XCTestCase

@property (nonatomic, strong) SBTService *service;

@end

@implementation SBTServiceTests

- (void)setUp
{
    [super setUp];
	self.service = OCMPartialMock([SBTService new]);
}

- (void)tearDown
{
	self.service = nil;
    [super tearDown];
}

- (void)testGetPersonListFromProviderNilProvider
{
	NSArray *personList = [self.service getPersonListFromProvider:nil];
	expect(personList).to.beNil();
}

- (void)testGetPersonListFromProviderDataNil
{
	id provider = OCMClassMock([SBTPersonProvider class]);
	OCMStub([self.service fakeData]).andReturn(nil);
	
	NSArray *personList = [self.service getPersonListFromProvider:provider];
	
	expect(personList).to.beNil();
}

- (void)testGetPerrsonListFromProvider
{
	id provider = OCMClassMock([SBTPersonProvider class]);
	
	OCMStub([provider getPersonListFromJSON:@[]]).andReturn(@[@"Steve Jobs"]);
	
	OCMStub([self.service fakeData]).andReturn(@[]);
	
	NSArray *personList = [self.service getPersonListFromProvider:provider];
	
	expect(personList).toNot.beNil();
	expect(personList.count > 0).to.equal(YES);
	expect(personList.firstObject).to.equal(@"Steve Jobs");
}

- (void)testGenerateDataYES
{
	OCMStub([self.service isGenerateData]).andReturn(YES);
	OCMStub([self.service fakeData]);
	
	[self.service generateData];
	
	OCMVerify([self.service fakeData]);
}

- (void)testGenerateDataNO
{
	OCMStub([self.service isGenerateData]).andReturn(NO);
	
	OCMReject([self.service fakeData]);
	
	[self.service generateData];
}

@end

//- (void)generateData
//{
//	if (self.generateData)
//	{
//		[self fakeData];
//	}
//}

