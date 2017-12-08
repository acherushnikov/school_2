//
//  SBTSBTPersonProviderProtocol.h
//  UnitTests
//
//  Created by Alexander Cherushnikov on 27.07.17.
//  Copyright © 2017 none. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SBTPersonProviderProtocol <NSObject>

- (NSArray *)getPersonListFromJSON:(NSArray *)jsonData;

@end
