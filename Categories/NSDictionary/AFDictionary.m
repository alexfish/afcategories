//
//  NSDictionary+HasKey.m
//  Categories
//
//  Created by Alex Fish on 09/08/2011.
//  Copyright 2011 Alex Fish. All rights reserved.
//

#import "AFDictionary.h"

@implementation NSDictionary (NSDictionary_HasKey)

-(BOOL)hasKey:(NSString *)key {
    
    return [self objectForKey:key] != nil ? YES : NO;
    
}

- (BOOL)isEmpty {
    
    return [self count] == 0 ? YES : NO;  
    
}

@end