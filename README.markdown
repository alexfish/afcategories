
#Custom Categories

##About

A collection of custom categories for use in projects

##Installation

Install the project as a git submodule by using the following command:

    git submodule add git://github.com/alexefish/Categories.git AFCategories

And then drag the files into your Xcode project.

##Available

###NSFileManager

* `+ (NSString *)libraryPath`
* `+ (NSString *)documentsPath`
* `+ (NSString *)cachesPath`
* `+ (NSString *)preferencesPath`
* `+ (NSString *)tmpPath`

###NSObject
* `- (BOOL)isNULL`

### NSArray
* `- (id)firstObject`
* `- (BOOL)isEmpty`
* `- (NSArray *)reverseArray`

### NSMutableArray
* `- (id)firstObject`
* `- (BOOL)isEmpty`
* `- (NSMutableArray *)reverseArray`

### NSDictionary
* `- (BOOL)hasKey:(NSString *)key`
* `- (BOOL)isEmpty`

### NSString
* `- (BOOL)isNotEqualToString:(NSString *)string`
* `- (BOOL)containsString:(NSString *)string`
* `- (NSString *)stringBetweenString:(NSString *)start andString:(NSString*)end`

### NSNumber
* `- (NSNumber *)floorNumber`
* `- (NSNumber *)ceilNumber`
* `- (NSNumber *)roundNumber`
* `+ (NSNumber *)numberFromString:(NSString *)string`
* `- (BOOL)isLessThanNumber:(NSNumber *)number`
* `- (BOOL)isMoreThanNumber:(NSNumber *)number`

### NSURL
* `- (NSString *)stringValue`

### UIApplication
* `- (NSTimeInterval)orientationRotationDuration`

##License

Copyright (C) 2011 by Alex Fish

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

Alex Fish - alexefish.com
