//
//  NSString+IsNotEqualToString.h
//  Categories
//
//  Created by Alex Fish on 09/08/2011.
//  Copyright 2011 Alex Fish. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AFString)

- (BOOL)isNotEqualToString:(NSString *)string;

- (BOOL)containsString:(NSString *)string;

- (NSString *)stringBetweenString:(NSString *)start andString:(NSString*)end;

@end