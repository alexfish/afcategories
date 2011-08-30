//
//  AFNumber.m
//  Categories
//
//  Created by Alex Fish on 30/08/2011.
//  Copyright 2011 LDN Creative Ltd. All rights reserved.
//

#import "AFNumber.h"

@implementation NSNumber (AFNumber)

- (NSNumber *)floorNumber {
    
    return [NSNumber numberWithFloat:floor([self floatValue])];
    
}

- (NSNumber *)ceilNumber {
    
    return [NSNumber numberWithFloat:ceil([self floatValue])];
    
}

- (NSNumber *)roundNumber {
    
    return [NSNumber numberWithFloat:round(2 * [self floatValue]) / 2];
    
}

- (BOOL)isLessThanNumber:(NSNumber *)number {
    
    return [self floatValue] < [number floatValue] ? YES : NO;
    
}

- (BOOL)isMoreThanNumber:(NSNumber *)number {
    
    return [self floatValue] > [number floatValue] ? YES : NO;
    
}

@end