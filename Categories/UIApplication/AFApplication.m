//
//  UIApplication+RotationDuration.m
//  Categories
//
//  Created by Alex Fish on 07/02/2012.
//  Copyright (c) 2012 LDN Creative Ltd. All rights reserved.
//

// Default Apple NSTimeIntervals
static double const iPadRotationDuration = 0.4;
static double const iPhoneRotationDuration = 0.3;
static double const iPadSlowRotationDuration = 0.8;
static double const iPhoneSlowRotationDuration = 0.6;

#import "AFApplication.h"

@implementation UIApplication (AFApplication)

- (NSTimeInterval)orientationRotationDuration {
    
    double duration;
    
    UIInterfaceOrientation interfaceOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    UIDeviceOrientation deviceOrientation = [[UIDevice currentDevice] orientation];
    
    if(UIInterfaceOrientationIsLandscape(interfaceOrientation) && UIDeviceOrientationIsLandscape(deviceOrientation))
    {
        if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        {
            duration = iPadSlowRotationDuration;
        } 
        else 
        {
            duration = iPhoneSlowRotationDuration;
        }
    } 
    else if(UIInterfaceOrientationIsPortrait(interfaceOrientation) && UIDeviceOrientationIsPortrait(deviceOrientation))
    {
        if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        {
            duration = iPadSlowRotationDuration;
        } 
        else 
        {
            duration = iPhoneSlowRotationDuration;
        }
    } 
    else 
    {
        if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        {
            duration = iPadRotationDuration;
        } 
        else 
        {
            duration = iPhoneRotationDuration;
        }
    }
    
    return duration;
    
}

@end