//
//  NSDictionary+HasKey.m
//  Categories
//
//  Created by Alex Fish on 09/08/2011.
//  Copyright 2011 LDN Creative Ltd. All rights reserved.
//

#import "NSDictionary+HasKey.h"

@implementation NSDictionary (NSDictionary_HasKey)

-(BOOL)hasKey:(NSString *)key {
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithDictionary:self];
    
    return [dictionary objectForKey:key] != nil ? YES : NO;
    
}

@end