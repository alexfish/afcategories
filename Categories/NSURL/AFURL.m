//
//  AFURL.m
//  Categories
//
//  Created by Alex Fish on 02/01/2012.
//  Copyright (c) 2012 LDN Creative Ltd. All rights reserved.
//

#import "AFURL.h"

@implementation NSURL (AFURL)

- (NSString *)stringValue {
    
    return [NSString stringWithFormat:@"%@",self];
    
}

@end