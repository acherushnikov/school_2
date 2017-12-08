//
//  SBTSBTPersonProvider.m
//  UnitTests
//
//  Created by Alexander Cherushnikov on 27.07.17.
//  Copyright © 2017 none. All rights reserved.
//

#import "SBTPersonProvider.h"
#import "SBTPerson.h"

@implementation SBTPersonProvider

- (NSArray *)getPersonListFromJSON:(NSArray *)jsonData
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
}

@end
