//
//  NSString+IsNotEqualToString.m
//  Categories
//
//  Created by Alex Fish on 09/08/2011.
//  Copyright 2011 Alex Fish. All rights reserved.
//

#import "AFString.h"

@implementation NSString (AFString)

- (BOOL)isNotEqualToString:(NSString *)string {
    
    return [self isEqualToString:string] ? NO : YES;
    
}

- (BOOL)containsString:(NSString *)string {
    
    return [self rangeOfString:string].location == NSNotFound ? NO : YES;
    
}

@end