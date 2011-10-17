//
//  AFFileManager.m
//  Categories
//
//  Created by Alex Fish on 17/10/2011.
//  Copyright 2011 LDN Creative Ltd. All rights reserved.
//

#import "AFFileManager.h"

@implementation NSFileManager (AFFileManager)

+ (NSString *)libraryPath {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    
	return [paths objectAtIndex:0];
    
}

+ (NSString *)documentsPath {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
	return [paths objectAtIndex:0];
    
}

+ (NSString *)cachesPath {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    
    return [paths objectAtIndex:0];

    
}

+ (NSString *)preferencesPath {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    
    return [NSString stringWithFormat:@"%@/Preferences",[paths objectAtIndex:0]];
    
}

+ (NSString *)tmpPath {
    
    return NSTemporaryDirectory();
    
}

@end