//
//  NSString+IsNotEqualToString.m
//  Categories
//
//  Created by Alex Fish on 09/08/2011.
//  Copyright 2011 Alex Fish. All rights reserved.
//

#import "AFString.h"

@implementation NSString (NSString_IsNotEqualToString)

-(BOOL)isNotEqualToString:(NSString *)string {
    
    return [self isEqualToString:string] ? NO : YES;
    
}

@end