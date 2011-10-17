//
//  AFFileManager.h
//  Categories
//
//  Created by Alex Fish on 17/10/2011.
//  Copyright 2011 LDN Creative Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (AFFileManager)

+ (NSString *)libraryPath;

+ (NSString *)documentsPath;

+ (NSString *)cachesPath;

+ (NSString *)preferencesPath;

+ (NSString *)tmpPath;

@end