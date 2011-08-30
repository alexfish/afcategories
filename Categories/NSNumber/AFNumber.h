//
//  AFNumber.h
//  Categories
//
//  Created by Alex Fish on 30/08/2011.
//  Copyright 2011 LDN Creative Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (AFNumber)

- (NSNumber *)floorNumber;

- (NSNumber *)ceilNumber;

- (NSNumber *)roundNumber;

- (BOOL)isLessThanNumber:(NSNumber *)number;

- (BOOL)isMoreThanNumber:(NSNumber *)number;

@end