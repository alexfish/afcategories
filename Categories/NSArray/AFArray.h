//
//  NSArray+Reverse.h
//  Categories
//
//  Created by Alex Fish on 14/07/2011.
//  Copyright 2011 Alex Fish. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Reverse)

- (NSArray *)reverseArray;

- (BOOL)isEmpty;

- (id)firstObject;

@end

@interface NSMutableArray (Reverse)

- (void)reverse;

@end