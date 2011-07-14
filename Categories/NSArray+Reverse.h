//
//  NSArray+Reverse.h
//  Categories
//
//  Created by Alex Fish on 14/07/2011.
//  Copyright 2011 LDN Creative Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Reverse)
-(NSArray *)reverseArray;
@end

@interface NSMutableArray (Reverse)
-(void)reverse;
@end