//
//  NSArray+Reverse.m
//  Categories
//
//  Created by Alex Fish on 14/07/2011.
//  Copyright 2011 Alex Fish. All rights reserved.
//

#import "AFArray.h"

@implementation NSArray (AFArray)

-(NSArray *)reverseArray {
    
    NSMutableArray *mutArray = [NSMutableArray arrayWithArray:self];
    
    [mutArray reverse];
    
    return mutArray;
    
}

- (BOOL)isEmpty {
    
    return [self count] == 0 ? YES : NO; 
    
}

- (id)firstObject {
    
    return [self objectAtIndex:0];
    
}

@end

@implementation NSMutableArray (AFArray)

-(void)reverse {
    
    int i = 0;
    int j = [self count] - 1;
    
    while (i<j) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:j];
        i++;
        j--;
    }
    
}

@end