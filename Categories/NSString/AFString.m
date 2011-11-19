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

- (NSString *)stringBetweenString:(NSString *)start andString:(NSString *)end {
    
    NSRange startRange = [self rangeOfString:start];
    
    if (startRange.location != NSNotFound) {
        
        NSRange targetRange;
        
        targetRange.location = startRange.location + startRange.length;
        
        targetRange.length = [self length] - targetRange.location;
        
        NSRange endRange = [self rangeOfString:end options:0 range:targetRange];
        
        if (endRange.location != NSNotFound) {
            
            targetRange.length = endRange.location - targetRange.location;
            
            return [self substringWithRange:targetRange];
            
        }
        
    }
    
    return nil;
    
}

@end