//
//  AFObject.m
//  Categories
//
//  Created by Alex Fish on 26/09/2011.
//  Copyright 2011 LDN Creative Ltd. All rights reserved.
//

#import "AFObject.h"

@implementation NSObject (AFObject)

- (BOOL)isNULL {
    if([self isEqual:[NSNull null]]){
        return YES;
    } else {
        return NO;
    }
}

@end